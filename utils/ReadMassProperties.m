function robot = ReadMassProperties(filename)

    % Read file
    txt = fileread(filename);
    
    % Split file into bodies
    blocks = regexp(txt,...
    '(?s)\d+\)\s*(.*?)(?=\r?\n\d+\)|$)',...
    'tokens');
    nBodies = numel(blocks);
    robot   = repmat(struct(),nBodies,1);
    
    % Iterate in bodies
    for k = 1:nBodies
    
        B = blocks{k}{1};
    
        % Name
        t = regexp(B,...
            'Mass properties of\s+([^\r\n]+)',...
            'tokens','once');
        robot(k).ID   = k-1;
        robot(k).Name = strtrim(t{1});
    
        % Configuration
        t = regexp(B,...
            'Configuration:\s*([^\r\n]+)',...
            'tokens','once');
        robot(k).Configuration = strtrim(t{1});
    
        % Coordinate system
        t = regexp(B,...
            'Coordinate system:\s*([^\r\n]+)',...
            'tokens','once');
        robot(k).CoordinateSystem = strtrim(t{1});
    
        % Mass
        t = regexp(B, 'Mass\s*=\s*([-\d.Ee+]+)', 'tokens', 'once');
        robot(k).Mass = str2double(t{1});
    
        % Volume
        t = regexp(B, 'Volume\s*=\s*([-\d.Ee+]+)', 'tokens', 'once');
        robot(k).Volume = str2double(t{1});
    
        % Surface Area
        t = regexp(B, 'Surface area\s*=\s*([-\d.Ee+]+)', 'tokens', 'once');
        robot(k).SurfaceArea = str2double(t{1});
    
        % Center of Mass
        t = regexp(B,'X\s*=\s*([-\d.Ee+]+)','tokens','once');
        x = str2double(t{1});
        t = regexp(B,'Y\s*=\s*([-\d.Ee+]+)','tokens','once');
        y = str2double(t{1});
        t = regexp(B,'Z\s*=\s*([-\d.Ee+]+)','tokens','once');
        z = str2double(t{1});
        robot(k).COM = [x; y; z];

        % Principal axes    
        expr = ['I([xyz])\s*=\s*\(' ...
                '\s*([-\d.Ee+]+),\s*' ...
                '([-\d.Ee+]+),\s*' ...
                '([-\d.Ee+]+)\)\s*' ...
                'P\1\s*=\s*([-\d.Ee+]+)'];
        A = regexp(B,expr,'tokens');
        R = zeros(3);
        P = zeros(3,1);
        for i = 1:3
            nums = str2double(A{i}(2:5));
            R(:,i) = nums(1:3);
            P(i) = nums(4);
        end
        robot(k).PrincipalAxes = R;
        robot(k).PrincipalMoments = P;

        % Inertia at COM    
        expr = ['Lxx\s*=\s*([-\d.Ee+]+).*?' ...
                'Lxy\s*=\s*([-\d.Ee+]+).*?' ...
                'Lxz\s*=\s*([-\d.Ee+]+).*?' ...
                'Lyx\s*=\s*([-\d.Ee+]+).*?' ...
                'Lyy\s*=\s*([-\d.Ee+]+).*?' ...
                'Lyz\s*=\s*([-\d.Ee+]+).*?' ...
                'Lzx\s*=\s*([-\d.Ee+]+).*?' ...
                'Lzy\s*=\s*([-\d.Ee+]+).*?' ...
                'Lzz\s*=\s*([-\d.Ee+]+)'];
        t = regexp(B,expr,'tokens','once');
        nums = str2double(t);
        robot(k).InertiaCOM = reshape(nums,[3 3]).';
    
        % Inertia at output CS
        idx = strfind(B,'Taken at the output coordinate system');
        sub = B(idx:end);
        expr = ['Ixx\s*=\s*([-\d.Ee+]+).*?' ...
                'Ixy\s*=\s*([-\d.Ee+]+).*?' ...
                'Ixz\s*=\s*([-\d.Ee+]+).*?' ...
                'Iyx\s*=\s*([-\d.Ee+]+).*?' ...
                'Iyy\s*=\s*([-\d.Ee+]+).*?' ...
                'Iyz\s*=\s*([-\d.Ee+]+).*?' ...
                'Izx\s*=\s*([-\d.Ee+]+).*?' ...
                'Izy\s*=\s*([-\d.Ee+]+).*?' ...
                'Izz\s*=\s*([-\d.Ee+]+)'];
        t = regexp(sub,expr,'tokens','once');
        nums = str2double(t);
        robot(k).InertiaOrigin = reshape(nums,[3 3]).';
    end
end
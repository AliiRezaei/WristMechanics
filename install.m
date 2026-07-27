% INSTALL  WristMechanics installation script
% ---------------------------------------------------------
% This script sets up the WristMechanics for use in MATLAB.
%
% How to use (from WristMechanics root directory):
%   1) Temporary install (current session only):
%          >> install
%
%   2) Permanent install (adds paths & attempts to save):
%          >> install('save')
%
%   3) Remove WristMechanics paths from the current session:
%          >> install('reset')
%
% The script adds the required folders under the WristMechanics root
% directory to the MATLAB search path.
%
% ---------------------------------------------------------
%  Author:  WristMechanics contributors
%  License: See LICENSE file in project root for details.
% ---------------------------------------------------------
function install(option)

    if nargin < 1
        option = ""; % default: just add paths for this session
    end

    % Locate WristMechanics root (directory where this file resides)
    rootDir = fileparts(mfilename("fullpath"));

    % Build a recursive list of all sub-directories
    allPaths = strsplit(genpath(rootDir), pathsep);

    % Exclusion patterns (folders to skip)
    skipPatterns = { [filesep '.git'], ...
        [filesep 'Trash'], ...
        [filesep 'solidworks\prt'], ...
        [filesep 'solidworks\asm'], ...
        [filesep 'motion'], ...
        [filesep 'examples'], ...
        [filesep 'codegen'] };

    % Filter out unwanted directories
    keepMask = true(1, numel(allPaths));
    for i = 1:numel(allPaths)
        p = allPaths{i};
        if isempty(p)
            keepMask(i) = false; % ignore empty tokens
            continue;
        end
        for k = 1:numel(skipPatterns)
            if contains(p, skipPatterns{k})
                keepMask(i) = false;
                break;
            end
        end
    end
    userPaths = allPaths(keepMask);

    % Add selected paths to MATLAB path
    cellfun(@(p) addpath(p), userPaths);
    fprintf("[WristMechanics] Added %d folders to MATLAB path.\n", numel(userPaths));

    % Handle optional arguments
    switch lower(option)
        case 'save'
            % Attempt to persist the new path
            status = savepath;
            if status == 0
                fprintf('[WristMechanics] Path saved successfully. WristMechanics will be available in future MATLAB sessions.\n');
            else
                warning('[WristMechanics] Unable to save the MATLAB path automatically. You may need to run MATLAB with administrator privileges.');
            end
        case 'reset'
            % Remove paths added by this install
            cellfun(@(p) rmpath(p), userPaths);
            fprintf('[WristMechanics] WristMechanics paths removed from current session.\n');
    end

    % Check for ManiDyn
    if strcmpi(option, "reset")
        return;
    end
    maniDynName  = "ManiDyn";
    currentPaths = strsplit(path, pathsep);
    currentPaths = currentPaths(~cellfun('isempty', currentPaths));

    % Find directories whose last folder name is ManiDyn
    idx = cellfun(@(p) strcmpi(getLastFolderName(p), maniDynName), currentPaths);
    maniDynRoots = currentPaths(idx);

    if isempty(maniDynRoots)
        error('[WristMechanics] Required dependency "%s" was not found on the MATLAB path.\n', maniDynName);
    else
        for k = 1:numel(maniDynRoots)
            root     = maniDynRoots{k};
            expected = filteredGenpath(root);
            missing  = setdiff(expected, currentPaths);

            if isempty(missing)
                fprintf('[WristMechanics] Verified: "%s" and all subfolders are on the MATLAB path.\n', root);
            else
                error(['[WristMechanics] "%s" is on the MATLAB path, but %d subfolder(s) are missing.\n' ...
                         'Run:\n\naddpath(genpath(''%s''));'], ...
                         root, numel(missing), root);
            end
        end
    end
end

% Local functions
function name = getLastFolderName(folder)
    [~, name] = fileparts(folder);
end

function paths = filteredGenpath(rootDir)
    % Directories to ignore
    skipPatterns = { ...
        [filesep '.git'], ...
        [filesep 'Trash'], ...
        [filesep 'codegen']};

    % Generate recursive list
    paths = strsplit(genpath(rootDir), pathsep);

    % Remove empty entries
    paths = paths(~cellfun('isempty', paths));

    % Keep only desired folders
    keep = true(size(paths));

    for i = 1:numel(paths)
        for k = 1:numel(skipPatterns)
            if contains(paths{i}, skipPatterns{k})
                keep(i) = false;
                break;
            end
        end
    end
    paths = paths(keep);
end
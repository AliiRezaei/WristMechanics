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
% The script adds utils folder under the WristMechanics root
% directory to the MATLAB search path.
%
% ---------------------------------------------------------
%  Author:  WristMechanics contributors
%  License: See LICENSE file in project root for details.
% ---------------------------------------------------------
function install(option)

    if nargin < 1
        option = "";
    end

    % WristMechanics root
    rootDir  = fileparts(mfilename("fullpath"));
    utilsDir = fullfile(rootDir, "utils");

    if ~isfolder(utilsDir)
        error('[WristMechanics] utils folder not found:\n%s', utilsDir);
    end

    % Add/remove utils
    switch lower(option)
        case "reset"
            rmpath(utilsDir);
            fprintf('[WristMechanics] Removed utils folder from the MATLAB path.\n');
        otherwise
            addpath(utilsDir);
            fprintf('[WristMechanics] Added utils folder to the MATLAB path.\n');
            if strcmpi(option, "save")
                if savepath == 0
                    fprintf('[WristMechanics] MATLAB path saved successfully.\n');
                else
                    warning('[WristMechanics] Unable to save the MATLAB path.');
                end
            end
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
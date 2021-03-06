classdef PTKPluginsSlidingPanel < GemSlidingPanel
    % PTKPluginsSlidingPanel. Part of the gui for the Pulmonary Toolkit.
    %
    %     This class is used internally within the Pulmonary Toolkit to help
    %     build the user interface.
    %
    %     PTKPluginsSlidingPanel represents the panel underneath the
    %     PTKPluginsPanel, which allows the panel to be scrolled using a
    %     scrollbar and swipe gestures.
    %
    %
    %
    %     Licence
    %     -------
    %     Part of the TD Pulmonary Toolkit. https://github.com/tomdoel/pulmonarytoolkit
    %     Author: Tom Doel, 2014.  www.tomdoel.com
    %     Distributed under the GNU GPL v3 licence. Please see website for details.
    %    
    
    methods
        function obj = PTKPluginsSlidingPanel(parent, organised_plugins, plugins_mode_group, mode_name, enabled_flag, run_plugin_callback, run_gui_plugin_callback, load_segmentation_callback)
            obj = obj@GemSlidingPanel(parent);
            obj.FloatingPanel = PTKPluginsPanel(obj, organised_plugins, plugins_mode_group, mode_name, enabled_flag, run_plugin_callback, run_gui_plugin_callback, load_segmentation_callback);
            obj.AddChild(obj.FloatingPanel);
        end
        
        function AddPlugins(obj, current_dataset)
            obj.FloatingPanel.AddPlugins(current_dataset); 
        end
        
        function AddAllPreviewImagesToButtons(obj, current_dataset, window, level)
            obj.FloatingPanel.AddAllPreviewImagesToButtons(current_dataset, window, level)
        end
        
        function AddPreviewImage(obj, plugin_name, current_dataset, window, level)
            obj.FloatingPanel.AddPreviewImage(plugin_name, current_dataset, window, level)
        end

        function RefreshPlugins(obj, current_dataset, window, level)
            obj.FloatingPanel.RefreshPlugins(current_dataset, window, level)
        end
        
        function mode = GetModeTabName(obj)
            mode = obj.FloatingPanel.GetModeTabName;
        end

        function mode = GetVisibility(obj)
            mode = obj.FloatingPanel.GetVisibility;
        end
        
        function mode = GetModeToSwitchTo(obj)
            mode = obj.FloatingPanel.GetModeToSwitchTo;
        end
    end
end
function varargout = FYP1(varargin)
% FYP1 MATLAB code for FYP1.fig
%      FYP1, by itself, creates a new FYP1 or raises the existing
%      singleton*.
%
%      H = FYP1 returns the handle to a new FYP1 or the handle to
%      the existing singleton*.
%
%      FYP1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FYP1.M with the given input arguments.
%
%      FYP1('Property','Value',...) creates a new FYP1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before FYP1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to FYP1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help FYP1

% Last Modified by GUIDE v2.5 29-Oct-2012 18:52:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @FYP1_OpeningFcn, ...
                   'gui_OutputFcn',  @FYP1_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before FYP1 is made visible.
function FYP1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to FYP1 (see VARARGIN)

% Choose default command line output for FYP1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes FYP1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% set(handles.start_tb, 'CData', imread('play.png'));

%Clearing X and Y axes of the plot
set(handles.waveform_axes,'YTick',NaN); set(handles.waveform_axes,'XTick',NaN);
set(handles.waveform_axes,'XColor','white'); set(handles.waveform_axes,'YColor','white');
% Disabling duty cycle (as by default sine is selected)
set(handles.duty_cycle_edit, 'Enable','off');
% by default un-checking all the options
set(handles.start_stop_upanel,'selectedob',[]);
set(handles.stop_tb, 'Enable','off');

% --- Outputs from this function are returned to the command line.
function varargout = FYP1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


function amp_edit_Callback(hObject, eventdata, handles)
% hObject    handle to amp_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of amp_edit as text
%        str2double(get(hObject,'String')) returns contents of amp_edit as a double


% --- Executes during object creation, after setting all properties.
function amp_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to amp_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function duty_cycle_edit_Callback(hObject, eventdata, handles)
% hObject    handle to duty_cycle_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of duty_cycle_edit as text
%        str2double(get(hObject,'String')) returns contents of duty_cycle_edit as a double


% --- Executes during object creation, after setting all properties.
function duty_cycle_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to duty_cycle_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function freq_edit_Callback(hObject, eventdata, handles)
% hObject    handle to freq_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of freq_edit as text
%        str2double(get(hObject,'String')) returns contents of freq_edit as a double


% --- Executes during object creation, after setting all properties.
function freq_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to freq_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cycles_edit_Callback(hObject, eventdata, handles)
% hObject    handle to cycles_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cycles_edit as text
%        str2double(get(hObject,'String')) returns contents of cycles_edit as a double


% --- Executes during object creation, after setting all properties.
function cycles_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cycles_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in stop_tb.
function start_tb_Callback(hObject, eventdata, handles)
% hObject    handle to stop_tb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in stop_tb.
function stop_tb_Callback(hObject, eventdata, handles)
% hObject    handle to stop_tb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function stop_tb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to stop_tb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over sine_tb.
function sine_tb_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to sine_tb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function waveform_axes_CreateFcn(hObject, eventdata, handles)
% hObject    handle to waveform_axes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate waveform_axes


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes when selected object is changed in waveform_upanel.
function waveform_upanel_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in waveform_upanel 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)
option = get(hObject,'Tag');   % Get Tag of selected object
if ( strcmp(option,'pulse_train_tb') )
    %Enable duty cycle
    set(handles.duty_cycle_edit, 'Enable','on');
else
    set(handles.duty_cycle_edit, 'Enable','off');
end


% --- Executes during object creation, after setting all properties.
function start_stop_upanel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to start_stop_upanel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes when selected object is changed in start_stop_upanel.
function start_stop_upanel_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in start_stop_upanel 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)
on_off = get(hObject,'Tag');
if (strcmp(on_off,'start_tb')) % i.e, ON (start)
    %set(handles.start_tb, 'Enable','off');   % disable START button
    set(handles.stop_tb, 'Enable','on');   % enable STOP button
    
    %Read the paramters
    A = str2double(get(handles.amp_edit,'string'));
    DC = str2double(get(handles.duty_cycle_edit,'string'))/100;
    f = str2double(get(handles.freq_edit,'string'));
    n = str2double(get(handles.cycles_edit,'string'));
    
    %creating t-axis
    T = 1/f;  % time period
    N = 5000; % N points in one period
    t = (1:N)./N*T;
    
    % so, now see the waveform type
    
     switch get(get(handles.waveform_upanel,'SelectedObject'),'Tag') %get tag of selected wave
        case 'sine_tb'
            p = plot(t,A.*sin(2*pi*f.*t));

        case 'pulse_train_tb'
            pulse_train = A.*[ones(1,DC*length(t)),-ones(1,(1-DC)*length(t))];
            p = plot(t,pulse_train);
        case 'triangular_tb'
            p=stem(1:50);

        case 'noise_tb'
            p=stem(1:25);

         case 'dc_tb'
            p = plot(t, A.*ones(size(t)));

        otherwise 
            p=stem(1:10);

     end
     set(p,'Parent', handles.waveform_axes);
else
    % clearing the waveform_axes plot
    axes(handles.waveform_axes); %#ok<*MAXES>
    cla;
    %Clearing X and Y axes of the plot
    set(handles.waveform_axes,'YTick',NaN); set(handles.waveform_axes,'XTick',NaN);
    set(handles.waveform_axes,'XColor','white'); set(handles.waveform_axes,'YColor','white');

end
    


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in load_pb.
function load_pb_Callback(hObject, eventdata, handles)
% hObject    handle to load_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in save_pb.
function save_pb_Callback(hObject, eventdata, handles)
% hObject    handle to save_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

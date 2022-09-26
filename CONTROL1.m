function varargout = CONTROL1(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @CONTROL1_OpeningFcn, ...
                   'gui_OutputFcn',  @CONTROL1_OutputFcn, ...
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

function CONTROL1_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);
clc;

function varargout = CONTROL1_OutputFcn(hObject, eventdata, handles)
varargout{1} = handles.output;

function slider1_Callback(hObject, eventdata, handles)

ModelName = 'Assem1';
%---------------------------------------------
theta1=get(handles.slider1,'value');
theta2=get(handles.slider2,'value');
theta3=get(handles.slider3,'value');
theta4=get(handles.slider4,'value');
theta5=get(handles.slider5,'value');
theta6=get(handles.slider6,'value');
%---------------------------------------------
set(handles.edit2,'string',num2str(theta1));
set(handles.edit3,'string',num2str(theta2));
set(handles.edit4,'string',num2str(theta3));
set(handles.edit5,'string',num2str(theta4));
set(handles.edit6,'string',num2str(theta5));
set(handles.edit7,'string',num2str(theta6));
%---------------------------------------------
set_param([ModelName '/Slider Gain1'],'Gain',num2str(theta1));
set_param([ModelName '/Slider Gain2'],'Gain',num2str(theta2));
set_param([ModelName '/Slider Gain3'],'Gain',num2str(theta3));
set_param([ModelName '/Slider Gain4'],'Gain',num2str(theta4));
set_param([ModelName '/Slider Gain5'],'Gain',num2str(theta5));
set_param([ModelName '/Slider Gain6'],'Gain',num2str(theta6));
%---------------------------------------------
[px,py,pz]=Fow_Kinematic(theta1,...
    theta2, theta3, theta4, theta5, theta6);
%---------------------------------------------
set(handles.edit8,'string',num2str(px));
set(handles.edit9,'string',num2str(py));
set(handles.edit10,'string',num2str(pz));

function slider1_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.7 .7 .7]);
end

function slider2_Callback(hObject, eventdata, handles)
ModelName = 'Assem1';
%---------------------------------------------
theta1=get(handles.slider1,'value');
theta2=get(handles.slider2,'value');
theta3=get(handles.slider3,'value');
theta4=get(handles.slider4,'value');
theta5=get(handles.slider5,'value');
theta6=get(handles.slider6,'value');
%---------------------------------------------
set(handles.edit2,'string',num2str(theta1));
set(handles.edit3,'string',num2str(theta2));
set(handles.edit4,'string',num2str(theta3));
set(handles.edit5,'string',num2str(theta4));
set(handles.edit6,'string',num2str(theta5));
set(handles.edit7,'string',num2str(theta6));
%---------------------------------------------
set_param([ModelName '/Slider Gain1'],'Gain',num2str(theta1));
set_param([ModelName '/Slider Gain2'],'Gain',num2str(theta2));
set_param([ModelName '/Slider Gain3'],'Gain',num2str(theta3));
set_param([ModelName '/Slider Gain4'],'Gain',num2str(theta4));
set_param([ModelName '/Slider Gain5'],'Gain',num2str(theta5));
set_param([ModelName '/Slider Gain6'],'Gain',num2str(theta6));
%---------------------------------------------
[px,py,pz]=Fow_Kinematic(theta1,...
    theta2, theta3, theta4, theta5, theta6);
%---------------------------------------------
set(handles.edit8,'string',num2str(px));
set(handles.edit9,'string',num2str(py));
set(handles.edit10,'string',num2str(pz));

function slider2_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider3_Callback(hObject, eventdata, handles)
ModelName = 'Assem1';
%---------------------------------------------
theta1=get(handles.slider1,'value');
theta2=get(handles.slider2,'value');
theta3=get(handles.slider3,'value');
theta4=get(handles.slider4,'value');
theta5=get(handles.slider5,'value');
theta6=get(handles.slider6,'value');
%---------------------------------------------
set(handles.edit2,'string',num2str(theta1));
set(handles.edit3,'string',num2str(theta2));
set(handles.edit4,'string',num2str(theta3));
set(handles.edit5,'string',num2str(theta4));
set(handles.edit6,'string',num2str(theta5));
set(handles.edit7,'string',num2str(theta6));
%---------------------------------------------
set_param([ModelName '/Slider Gain1'],'Gain',num2str(theta1));
set_param([ModelName '/Slider Gain2'],'Gain',num2str(theta2));
set_param([ModelName '/Slider Gain3'],'Gain',num2str(theta3));
set_param([ModelName '/Slider Gain4'],'Gain',num2str(theta4));
set_param([ModelName '/Slider Gain5'],'Gain',num2str(theta5));
set_param([ModelName '/Slider Gain6'],'Gain',num2str(theta6));
%---------------------------------------------
[px,py,pz]=Fow_Kinematic(theta1,...
    theta2, theta3, theta4, theta5, theta6);
%---------------------------------------------
set(handles.edit8,'string',num2str(px));
set(handles.edit9,'string',num2str(py));
set(handles.edit10,'string',num2str(pz));

function slider3_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider4_Callback(hObject, eventdata, handles)
ModelName = 'Assem1';
%---------------------------------------------
theta1=get(handles.slider1,'value');
theta2=get(handles.slider2,'value');
theta3=get(handles.slider3,'value');
theta4=get(handles.slider4,'value');
theta5=get(handles.slider5,'value');
theta6=get(handles.slider6,'value');
%---------------------------------------------
set(handles.edit2,'string',num2str(theta1));
set(handles.edit3,'string',num2str(theta2));
set(handles.edit4,'string',num2str(theta3));
set(handles.edit5,'string',num2str(theta4));
set(handles.edit6,'string',num2str(theta5));
set(handles.edit7,'string',num2str(theta6));
%---------------------------------------------
set_param([ModelName '/Slider Gain1'],'Gain',num2str(theta1));
set_param([ModelName '/Slider Gain2'],'Gain',num2str(theta2));
set_param([ModelName '/Slider Gain3'],'Gain',num2str(theta3));
set_param([ModelName '/Slider Gain4'],'Gain',num2str(theta4));
set_param([ModelName '/Slider Gain5'],'Gain',num2str(theta5));
set_param([ModelName '/Slider Gain6'],'Gain',num2str(theta6));
%---------------------------------------------
[px,py,pz]=Fow_Kinematic(theta1,...
    theta2, theta3, theta4, theta5, theta6);
%---------------------------------------------
set(handles.edit8,'string',num2str(px));
set(handles.edit9,'string',num2str(py));
set(handles.edit10,'string',num2str(pz));

function slider4_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider5_Callback(hObject, eventdata, handles)
ModelName = 'Assem1';
%---------------------------------------------
theta1=get(handles.slider1,'value');
theta2=get(handles.slider2,'value');
theta3=get(handles.slider3,'value');
theta4=get(handles.slider4,'value');
theta5=get(handles.slider5,'value');
theta6=get(handles.slider6,'value');
%---------------------------------------------
set(handles.edit2,'string',num2str(theta1));
set(handles.edit3,'string',num2str(theta2));
set(handles.edit4,'string',num2str(theta3));
set(handles.edit5,'string',num2str(theta4));
set(handles.edit6,'string',num2str(theta5));
set(handles.edit7,'string',num2str(theta6));
%---------------------------------------------
set_param([ModelName '/Slider Gain1'],'Gain',num2str(theta1));
set_param([ModelName '/Slider Gain2'],'Gain',num2str(theta2));
set_param([ModelName '/Slider Gain3'],'Gain',num2str(theta3));
set_param([ModelName '/Slider Gain4'],'Gain',num2str(theta4));
set_param([ModelName '/Slider Gain5'],'Gain',num2str(theta5));
set_param([ModelName '/Slider Gain6'],'Gain',num2str(theta6));
%---------------------------------------------
[px,py,pz]=Fow_Kinematic(theta1,...
    theta2, theta3, theta4, theta5, theta6);
%---------------------------------------------
set(handles.edit8,'string',num2str(px));
set(handles.edit9,'string',num2str(py));
set(handles.edit10,'string',num2str(pz));

function slider5_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider6_Callback(hObject, eventdata, handles)
ModelName = 'Assem1';
%---------------------------------------------
theta1=get(handles.slider1,'value');
theta2=get(handles.slider2,'value');
theta3=get(handles.slider3,'value');
theta4=get(handles.slider4,'value');
theta5=get(handles.slider5,'value');
theta6=get(handles.slider6,'value');
%---------------------------------------------
set(handles.edit2,'string',num2str(theta1));
set(handles.edit3,'string',num2str(theta2));
set(handles.edit4,'string',num2str(theta3));
set(handles.edit5,'string',num2str(theta4));
set(handles.edit6,'string',num2str(theta5));
set(handles.edit7,'string',num2str(theta6));
%---------------------------------------------
set_param([ModelName '/Slider Gain1'],'Gain',num2str(theta1));
set_param([ModelName '/Slider Gain2'],'Gain',num2str(theta2));
set_param([ModelName '/Slider Gain3'],'Gain',num2str(theta3));
set_param([ModelName '/Slider Gain4'],'Gain',num2str(theta4));
set_param([ModelName '/Slider Gain5'],'Gain',num2str(theta5));
set_param([ModelName '/Slider Gain6'],'Gain',num2str(theta6));
%---------------------------------------------
[px,py,pz]=Fow_Kinematic(theta1,...
    theta2, theta3, theta4, theta5, theta6);
%---------------------------------------------
set(handles.edit8,'string',num2str(px));
set(handles.edit9,'string',num2str(py));
set(handles.edit10,'string',num2str(pz));

function slider6_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function edit1_Callback(hObject, eventdata, handles)

function edit1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit2_Callback(hObject, eventdata, handles)

function edit2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit3_Callback(hObject, eventdata, handles)

function edit3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit4_Callback(hObject, eventdata, handles)

function edit4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit5_Callback(hObject, eventdata, handles)

function edit5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit6_Callback(hObject, eventdata, handles)

function edit6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit7_Callback(hObject, eventdata, handles)

function edit7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit8_Callback(hObject, eventdata, handles)

function edit8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit9_Callback(hObject, eventdata, handles)

function edit9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit10_Callback(hObject, eventdata, handles)

function edit10_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function pushbutton2_Callback(hObject, eventdata, handles)
theta1 = 0; theta2 = 0; theta3 = 0;
theta4 = 0; theta5 = 0; theta6 = 0;
%---------------------------------------------
[px,py,pz]=Fow_Kinematic(theta1,...
    theta2, theta3, theta4, theta5, theta6);
%---------------------------------------------
ModelName = 'Assem1';
set_param([ModelName '/Slider Gain1'],'Gain',num2str(theta1));
set_param([ModelName '/Slider Gain2'],'Gain',num2str(theta2));
set_param([ModelName '/Slider Gain3'],'Gain',num2str(theta3));
set_param([ModelName '/Slider Gain4'],'Gain',num2str(theta4));
set_param([ModelName '/Slider Gain5'],'Gain',num2str(theta5));
set_param([ModelName '/Slider Gain6'],'Gain',num2str(theta6));
%---------------------------------------------
set(handles.slider1,'value',theta1);
set(handles.slider2,'value',theta2);
set(handles.slider3,'value',theta3);
set(handles.slider4,'value',theta4);
set(handles.slider5,'value',theta5);
set(handles.slider6,'value',theta6);
%---------------------------------------------
set(handles.edit2,'string',num2str(0));
set(handles.edit3,'string',num2str(0));
set(handles.edit4,'string',num2str(0));
set(handles.edit5,'string',num2str(0));
set(handles.edit6,'string',num2str(0));
set(handles.edit7,'string',num2str(0));
set(handles.edit8,'string',num2str(px));
set(handles.edit9,'string',num2str(py));
set(handles.edit10,'string',num2str(pz));

function RUN_Callback(hObject, eventdata, handles)
ModelName = 'Assem1';
open_system(ModelName);
set_param(ModelName,'BlockReduction','off');
set_param(ModelName,'StopTime','inf');
set_param(ModelName,'simulationMode','normal');
set_param(ModelName,'StartFcn','1');
set_param(ModelName, 'SimulationCommand', 'start');

function STOP_Callback(hObject, eventdata, handles)
close;

function INVERSE_Callback(hObject, eventdata, handles)
px=get(handles.slider7,'value');
py=get(handles.slider8,'value');
pz=get(handles.slider9,'value');
%---------------------------------------------
set(handles.edit11,'string',num2str(px));
set(handles.edit12,'string',num2str(py));
set(handles.edit13,'string',num2str(pz));
set(handles.edit8,'string',num2str(px));
set(handles.edit9,'string',num2str(py));
set(handles.edit10,'string',num2str(pz));
%---------------------------------------------
[theta1, theta2, theta3, theta4, theta5, theta6]=...
    Inv_Kinematic(px,py,pz);
%---------------------------------------------
ModelName = 'Assem1';
guidata(hObject,handles);
set_param([ModelName '/Slider Gain1'],'Gain',num2str(theta1));
set_param([ModelName '/Slider Gain2'],'Gain',num2str(theta2));
set_param([ModelName '/Slider Gain3'],'Gain',num2str(theta3));
set_param([ModelName '/Slider Gain4'],'Gain',num2str(theta4));
set_param([ModelName '/Slider Gain5'],'Gain',num2str(theta5));
set_param([ModelName '/Slider Gain6'],'Gain',num2str(theta6));
%---------------------------------------------
set(handles.edit2,'string',num2str(theta1));
set(handles.edit3,'string',num2str(theta2));
set(handles.edit4,'string',num2str(theta3));
set(handles.edit5,'string',num2str(theta4));
set(handles.edit6,'string',num2str(theta5));
set(handles.edit7,'string',num2str(theta6));

function slider7_Callback(hObject, eventdata, handles)
px=get(handles.slider7,'value');
set(handles.edit11,'string',num2str(px));

function slider7_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider8_Callback(hObject, eventdata, handles)
py=get(handles.slider8,'value');
set(handles.edit12,'string',num2str(py));

function slider8_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider9_Callback(hObject, eventdata, handles)
pz=get(handles.slider9,'value');
set(handles.edit13,'string',num2str(pz));

function slider9_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function edit11_Callback(hObject, eventdata, handles)

function edit11_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit12_Callback(hObject, eventdata, handles)

function edit12_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit13_Callback(hObject, eventdata, handles)

function edit13_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit20_Callback(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20 as text
%        str2double(get(hObject,'String')) returns contents of edit20 as a double


% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

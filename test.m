function varargout = test(varargin)
% TEST M-file for test.fig
%      TEST, by itself, creates a new TEST or raises the existing
%      singleton*.
%
%      H = TEST returns the handle to a new TEST or the handle to
%      the existing singleton*.
%
%      TEST('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEST.M with the given input arguments.
%
%      TEST('Property','Value',...) creates a new TEST or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before test_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to test_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% InputCR the above text to modify the response to help test

% Last Modified by GUIDE v2.5 11-Apr-2012 16:19:13

% Begin initialization code - DO NOT INPUTCR
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @test_OpeningFcn, ...
                   'gui_OutputFcn',  @test_OutputFcn, ...
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
% End initialization code - DO NOT INPUTCR


% --- Executes just before test is made visible.
function test_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to test (see VARARGIN)

% Choose default command line output for test
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
global k
clc
k=0; %use later to make the table work
% UIWAIT makes test wait for user response (see UIRESUME)
% uiwait(handles.figure);


% --- Outputs from this function are returned to the command line.
function varargout = test_OutputFcn(~, ~, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function InputCR_Callback(~, ~, ~)
% hObject    handle to InputCR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of InputCR as text
%        str2double(get(hObject,'String')) returns contents of InputCR as a double


% --- Executes during object creation, after setting all properties.
function InputCR_CreateFcn(hObject, ~, ~)
% hObject    handle to InputCR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: InputCR controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
   set(hObject,'BackgroundColor','white');
end


function InputHR_Callback(hObject, ~, ~)
% hObject    handle to InputHR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of InputHR as text
%        str2double(get(hObject,'String')) returns contents of InputHR as a double


% --- Executes during object creation, after setting all properties.
function InputHR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to InputHR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
   set(hObject,'BackgroundColor','white');
end


function InputCM_Callback(hObject, eventdata, handles)
% hObject    handle to InputCM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of InputCM as text
%        str2double(get(hObject,'String')) returns contents of InputCM as a double


% --- Executes during object creation, after setting all properties.
function InputCM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to InputCM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function InputHM_Callback(hObject, eventdata, handles)
% hObject    handle to InputHM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of InputHM as text
%        str2double(get(hObject,'String')) returns contents of InputHM as a double


% --- Executes during object creation, after setting all properties.
function InputHM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to InputHM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from
%        popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
 if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
     set(hObject,'BackgroundColor','white');
 end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
 if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
     set(hObject,'BackgroundColor','white');
 end

function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
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


function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(~, ~, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Clear all the input boxes
set(handles.InputCR,'String','')
set(handles.InputCM,'String','')
set(handles.InputHR,'String','')
set(handles.InputHM,'String','')
set(handles.edit5,'String','');
set(handles.edit6,'String','');
set(handles.edit7,'String','');





% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(~, ~, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc
global k

%get what the user wants to be plotted
loading=get(handles.popupmenu3,'Value');
var=get(handles.popupmenu1,'Value');
bond=get(handles.popupmenu2,'Value');

%get the variables the user has entered
cr= str2double(get(handles.InputCR,'String'));
cm= str2double(get(handles.InputCM,'String'));
hr= str2double(get(handles.InputHR,'String'));
hm= str2double(get(handles.InputHM,'String'));
minar=str2double(get(handles.edit5,'String'));
maxar=str2double(get(handles.edit6,'String'));
incar=str2double(get(handles.edit7,'String'));

%set the normalised wavelength, one for each mode(but only need one tbh)
ar1=minar:incar:maxar;
ar2=minar:incar:maxar;
ar3=minar:incar:maxar;
ar4=minar:incar:maxar;

%see if any of the input boxes are 0 for error messages
emptyCR=isempty(get(handles.InputCR,'String'));
emptyCM=isempty(get(handles.InputCM,'String'));
emptyHR=isempty(get(handles.InputHR,'String'));
emptyHM=isempty(get(handles.InputHM,'String'));
emptyminar=isempty(get(handles.edit5,'String'));
emptymaxar=isempty(get(handles.edit6,'String'));



%make sure the min.wavelength is smaller than the the max. wavenlength
if minar >= maxar
    msgbox('The minimum normalised wavelength has to be smaller than the maximum normalised wavelength')
    return
end


if loading==1 && var==1 && bond==1 %Plot Uniaxial, Normalized Wavelength, Perfect
    %Error message if input boxes haven't been entered
    if emptyCR==1 || emptyCM==1 || emptyHR==1 || emptyHM==1 || emptyminar==1 || emptymaxar==1 || cr<=0 || cm<=0 || hr<=0 || hm<=0 || minar<=0 || maxar<=0 || incar<=0
        msgbox('Please enter values of greater than 0 in all input boxes.')
        return
    end
    %Get the data from the function
    [s1,s2,s3,s4]=UniaxialPerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
    
    figure
    plot(ar1,s1,'r*',ar2,s2,'b',ar3,s3,'ks',ar4,s4,'g');
    legend('Mode 1','Mode 2','Mode 3','Mode 4','Location','SouthEast')
    title(['Uniaxial Compression Perfectly Bonded   Cr/Cm=',num2str(cr/cm),'   hr/hm=',num2str(hr/hm)])
    xlabel('Normalized Wavelength')
    ylabel('Shortening Factor')
    
    %calculate and display the crit. shortening factor and crit. wavelength  
    k=k+1;
    row = get(handles.uitable1,'Data');
    sall=[s1 s2];
    arall=[ar1 ar2];
    [CritShort,locationofCritShort]=max(sall);
    Critar=arall(locationofCritShort);
    row{k,1}='Uniaxial Compression';
    row{k,2}='Perfect';
    row{k,3}=cr/cm;
    row{k,4}=hr/hm;
    row{k,5}=CritShort;
    row{k,6}=Critar;
    set(handles.uitable1,'Data',row)
    
    
    
    
elseif loading==1 && var==1 && bond==2  %Uniaxial, Normalised Wavelength, Sliding
    if emptyCR==1 || emptyCM==1 || emptyHR==1 || emptyHM==1 || emptyminar==1 || emptymaxar==1 || cr<=0 || cm<=0 || hr<=0 || hm<=0 || minar<=0 || maxar<=0 || incar<=0
        msgbox('Please enter values of greater than 0 in all input boxes.')
        return
    end
    if minar<0.1
            questminar = questdlg('A value of greater or equal to 0.1 for normalised wavelngth is needed to give an accurate graph','Warning','OK','Continue Anyway','OK');
            switch questminar
                case 'OK'
                case 'Continue Anyway'
                    [s1,s2,s3,s4]=UniaxialSlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
    
                    figure
                    plot(ar1,s1,'r*',ar2,s2,'b',ar3,s3,'ks',ar4,s4,'g');
                    legend('Mode 1','Mode 2','Mode 3','Mode 4','Location','SouthEast')
                    title(['Uniaxial Compression Sliding Layers   Cr/Cm=',num2str(cr/cm),'   hr/hm=',num2str(hr/hm)])
                    xlabel('Normalized Wavelength')
                    ylabel('Shortening Factor')

                    k=k+1;
                    row = get(handles.uitable1,'Data');
                    sall=[s1 s2];
                    arall=[ar1 ar2];
                    [CritShort,locationofCritShort]=max(sall);
                    Critar=arall(locationofCritShort);
                    row{k,1}='Uniaxial Compression';
                    row{k,2}='Sliding Layers';
                    row{k,3}=cr/cm;
                    row{k,4}=hr/hm;
                    row{k,5}=CritShort;
                    row{k,6}=Critar;
                    set(handles.uitable1,'Data',row)
            end
    else
        [s1,s2,s3,s4]=UniaxialSlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
        
        figure
        plot(ar1,s1,'r*',ar2,s2,'b',ar3,s3,'ks',ar4,s4,'g');
        legend('Mode 1','Mode 2','Mode 3','Mode 4','Location','SouthEast')
        title(['Uniaxial Compression Sliding Layers   Cr/Cm=',num2str(cr/cm),'   hr/hm=',num2str(hr/hm)])
        xlabel('Normalized Wavelength')
        ylabel('Shortening Factor')

        k=k+1;  
        row = get(handles.uitable1,'Data');
        sall=[s1 s2];
        arall=[ar1 ar2];
        [CritShort,locationofCritShort]=max(sall);
        Critar=arall(locationofCritShort);
        row{k,1}='Uniaxial Compression';
        row{k,2}='Sliding Layers';
        row{k,3}=cr/cm;
        row{k,4}=hr/hm;
        row{k,5}=CritShort;
        row{k,6}=Critar;
        set(handles.uitable1,'Data',row)
    end


    
elseif loading==1 && var==1 && bond==3   %Uniaxial, Normalised Wavelength, Both
    if emptyCR==1 || emptyCM==1 || emptyHR==1 || emptyHM==1 || emptyminar==1 || emptymaxar==1 || cr<=0 || cm<=0 || hr<=0 || hm<=0 || minar<=0 || maxar<=0 || incar<=0
        msgbox('Please enter values of greater than 0 in all input boxes.')
        return
    end
    if minar<0.1
        questminar = questdlg('A value of greater or equal to 0.1 for normalised wavelngth is needed to give an accurate graph','Warning','OK','Continue Anyway','OK');
        switch questminar
            case 'OK'
            case 'Continue Anyway'
                [s1perf,s2perf]=UniaxialPerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                [s1slide,s2slide]=UniaxialSlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                  
                figure
                plot(ar1,s1perf,'r',ar1,s1slide,'k',ar2,s2perf,'b*',ar2,s2slide,'g*')
                legend('Mode 1 Perfectly Bonded','Mode 1 Sliding Layers','Mode 2 Perfectly Bonded','Mode 2 Sliding Layers ','Location','SouthWest')
                title(['Uniaxial Compression   Cr/Cm=',num2str(cr/cm),'   hr/hm=',num2str(hr/hm)])
                xlabel('Normalized Wavelength')
                ylabel('Shortening Factor')
                 %axis([0.17 0.8 0.8 1])
        end
    else
        [s1perf,s2perf]=UniaxialPerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
        [s1slide,s2slide]=UniaxialSlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
            
        figure
        plot(ar1,s1perf,'r',ar1,s1slide,'k',ar2,s2perf,'b*',ar2,s2slide,'g*')
        legend('Mode 1 Perfectly Bonded','Mode 1 Sliding Layers','Mode 2 Perfectly Bonded','Mode 2 Sliding Layers ','Location','SouthWest')
        title(['Uniaxial Compression    Cr/Cm=',num2str(cr/cm),'   hr/hm=',num2str(hr/hm)])
        xlabel('Normalized Wavelength')
        ylabel('Shortening Factor')
        %axis([0.17 0.8 0.8 1])
    end
    
    

elseif loading==1 && var==2 && bond==1 %Uniaxial, Material Constant ratio, Perfect
    if emptyHR==1 || emptyHM==1 || emptyminar==1 || emptymaxar==1 || hr<=0 || hm<=0 || minar<=0 || maxar<=0 || incar<=0
        msgbox('Please enter values in thickness ratio and normalised wavelength input boxes.')
        return
    end
    c1=inputdlg({'Min. material constant','Max. material constant','Material constant increment'},'',1,{'1','100','5'});
    c=str2double(c1{1}):str2double(c1{3}):str2double(c1{2});
    scrit=zeros(1,length(c));
    for i=1:length(c)
        cr=c(i);
        cm=1;
        [s1,s2,s3,s4]=UniaxialPerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
        scrit(i)=max([s1 s2 s3 s4]);
    end
    figure
    plot(c,scrit)
    title(['Uniaxial Compression Perfectly Bonded   hr/hm=',num2str(hr/hm)])
    xlabel('Ratio of Material Constants')
    ylabel('Critical Shortening Factor')
    
    
    
    
elseif loading==1 && var==2 && bond==2  %Uniaxial, Material constant ratio, Sliding
    if emptyHR==1 || emptyHM==1 || emptyminar==1 || emptymaxar==1 || hr<=0 || hm<=0 || minar<=0 || maxar<=0 || incar<=0
        msgbox('Please enter values in thickness ratio and normalised wavelength input boxes.')
        return
    end
    if minar<0.1
        questminar = questdlg('A value of greater or equal to 0.1 for normalised wavelngth is needed to give an accurate graph','Warning','OK','Continue Anyway','OK');
        switch questminar
            case 'OK'
            case 'Continue Anyway'
                c1=inputdlg({'Min. material constant','Max. material constant','Material constant increment'},'',1,{'1','100','5'});
                c=str2double(c1{1}):str2double(c1{3}):str2double(c1{2});
                scrit=zeros(1,length(c));
                for i=1:length(c)
                    cr=c(i);
                    cm=1;
                    [s1,s2]=UniaxialSlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                    scrit(i)=max([s1 s2]);
                end
                figure
                plot(c,scrit)
                title(['Uniaxial Compression Sliding Layers   hr/hm=',num2str(hr/hm)])
                xlabel('Ratio of Material Constants')
                ylabel('Critical Shortening Factor')
        end
    else
        c1=inputdlg({'Min. material constant','Max. material constant','Material constant increment'},'',1,{'1','100','5'});
        c=str2double(c1{1}):str2double(c1{3}):str2double(c1{2});
        scrit=zeros(1,length(c));
        for i=1:length(c)
            cr=c(i);
            cm=1;
            [s1,s2]=UniaxialSlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
            scrit(i)=max([s1 s2]);
        end
        figure
        plot(c,scrit)
        title(['Uniaxial Compression Sliding Layers   hr/hm=',num2str(hr/hm)])
        xlabel('Ratio of Material Constants')
        ylabel('Critical Shortening Factor')
    end

    


elseif loading==1 && var==2 && bond ==3  %Uniaxial, Material Constant Ratio, Both
    if emptyHR==1 || emptyHM==1 || emptyminar==1 || emptymaxar==1 || hr<=0 || hm<=0 || minar<=0 || maxar<=0 || incar<=0
        msgbox('Please enter values in thickness ratio and normalised wavelength input boxes.')
        return
    end
    if minar<0.1
        questminar = questdlg('A value of greater or equal to 0.1 for normalised wavelngth is needed to give an accurate graph','Warning','OK','Continue Anyway','OK');
        switch questminar
            case 'OK'
            case 'Continue Anyway'
                c1=inputdlg({'Min. material constant','Max. material constant','Material constant increment'},'',1,{'1','100','5'});
                c=str2double(c1{1}):str2double(c1{3}):str2double(c1{2});
                scritperf=zeros(1,length(c));
                scritslide=zeros(1,length(c));
                for i=1:length(c)
                    cr=c(i);
                    cm=1;
                    [s1perf,s2perf,s3perf,s4perf]=UniaxialPerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                    [s1slide,s2slide,s3slide,s4slide]=UniaxialSlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                    scritperf(i)=max([s1perf s2perf s3perf s4perf]);
                    scritslide(i)=max([s1slide s2slide s3slide s4slide]);
                end
                figure
                plot(c,scritperf,'r',c,scritslide,'k')
                legend('Perfectly Bonded','Sliding Layers','Location','SouthEast')
                title(['Uniaxial Compression   hr/hm=',num2str(hr/hm)])
                xlabel('Ratio of Material Constants')
                ylabel('Critical Shortening Factor')
                %axis([0 200 0 1])
        end
    else
        c1=inputdlg({'Min. material constant','Max. material constant','Material constant increment'},'',1,{'1','100','5'});
        c=str2double(c1{1}):str2double(c1{3}):str2double(c1{2});
        scritperf=zeros(1,length(c));
        scritslide=zeros(1,length(c));
        for i=1:length(c)
            cr=c(i);
            cm=1;
            [s1perf,s2perf,s3perf,s4perf]=UniaxialPerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
            [s1slide,s2slide,s3slide,s4slide]=UniaxialSlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
            scritperf(i)=max([s1perf s2perf s3perf s4perf]);
            scritslide(i)=max([s1slide s2slide s3slide s4slide]);
        end
        figure
        plot(c,scritperf,'r',c,scritslide,'k')
        legend('Perfectly Bonded','Sliding Layers','Location','SouthEast')
        title(['Uniaxial Compression   hr/hm=',num2str(hr/hm)])
        xlabel('Ratio of Material Constants')
        ylabel('Critical Shortening Factor')
        %axis([0 200 0 1])
    end
    
    
        
        
        
elseif loading==1 && var==3 && bond ==1  %Uniaxial, Thickness Ratio, Perfectly
    if emptyCR==1 || emptyCM==1 || emptyminar==1 || emptymaxar==1 || cr<=0 || cm<=0 || minar<=0 || maxar<=0 || incar<=0
        msgbox('Please enter values of greater or equal to 0 in material constant and normalised wavelength input boxes.')
        return
    end
    h1=inputdlg({'Min. thickness ratio','Max. thickness ratio ','Thickness ratio increment'},'',1,{'0.01','0.4','0.01'});
    h=str2double(h1{1}):str2double(h1{3}):str2double(h1{2});
    scrit=zeros(1,length(h));
    for i=1:length(h)
        hr=h(i);
        hm=1;
        [s1,s2]=UniaxialPerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
        scrit(i)=max([s1 s2]);
    end
    figure
    plot(h,scrit)
    title(['Uniaxial Compression Perfectly Bonded  cr/cm=',num2str(cr/cm)])
    xlabel('Ratio of Thickness')
    ylabel('Critical Shortening Factor')
    
    
    
elseif loading==1 && var==3 && bond ==2  %Uniaxial, Thickness Ratio, Sliding
    if emptyCR==1 || emptyCM==1 || emptyminar==1 || emptymaxar==1 || cr<=0 || cm<=0 || minar<=0 || maxar<=0 || incar<=0
        msgbox('Please enter values of greater than 0 in all input boxes.')
        return
    end
    if minar<0.1
        questminar = questdlg('A value of greater or equal to 0.1 for normalised wavelngth is needed to give an accurate graph','Warning','OK','Continue Anyway','OK');
        switch questminar
            case 'OK'
            case 'Continue Anyway'
                h1=inputdlg({'Min. thickness ratio','Max. thickness ratio ','Thickness ratio increment'},'',1,{'0.01','0.4','0.01'});
                h=str2double(h1{1}):str2double(h1{3}):str2double(h1{2});
                scrit=zeros(1,length(h));
                for i=1:length(h)
                    hr=h(i);
                    hm=1;
                    [s1,s2]=UniaxialSlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                    scrit(i)=max([s1 s2]);
                end
                figure
                plot(h,scrit)
                title(['Uniaxial Compression Sliding Layers  cr/cm=',num2str(cr/cm)])
                xlabel('Ratio of Thickness')
                ylabel('Critical Shortening Factor')
        end
    else
        h1=inputdlg({'Min. thickness ratio','Max. thickness ratio ','Thickness ratio increment'},'',1,{'0.01','0.4','0.01'});
        h=str2double(h1{1}):str2double(h1{3}):str2double(h1{2});
        scrit=zeros(1,length(h));
        for i=1:length(h)
            hr=h(i);
            hm=1;
            [s1,s2]=UniaxialSlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
            scrit(i)=max([s1 s2]);
        end
        figure
        plot(h,scrit)
        title(['Uniaxial Compression Sliding Layers  cr/cm=',num2str(cr/cm)])
        xlabel('Ratio of Thickness')
        ylabel('Critical Shortening Factor')
    end
    
    
    
 elseif loading==1 && var==3 && bond ==3   %Uniaxial, Thickness Ratio, Both
     if emptyCR==1 || emptyCM==1 || emptyminar==1 || emptymaxar==1 || cr<=0 || cm<=0 || minar<=0 || maxar<=0 || incar<=0
        msgbox('Please enter values of greater than 0 in all input boxes.')
        return
    end
    if minar<0.1
        questminar = questdlg('A value of greater or equal to 0.1 for normalised wavelngth is needed to give an accurate graph','Warning','OK','Continue Anyway','OK');
        switch questminar
            case 'OK'
            case 'Continue Anyway'
                h1=inputdlg({'Min. thickness ratio','Max. thickness ratio ','Thickness ratio increment'},'',1,{'0.01','0.4','0.01'});
                h=str2double(h1{1}):str2double(h1{3}):str2double(h1{2});
                scritperf=zeros(1,length(h));
                scritslide=zeros(1,length(h));
                for i=1:length(h)
                    hr=h(i);
                    hm=1;
                    [s1perf,s2perf,s3perf,s4perf]=UniaxialPerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                    [s1slide,s2slide,s3slide,s4slide]=UniaxialSlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                    scritperf(i)=max([s1perf s2perf s3perf s4perf]);
                    scritslide(i)=max([s1slide s2slide s3slide s4slide]);
                end
                figure
                plot(h,scritperf,'r',h,scritslide,'k')
                legend('Perfectly Bonded','Sliding Layers','Location','SouthEast')
                title(['Equi-Biaxial Compression   cr/cm=',num2str(cr/cm)])
                xlabel('Ratio of Thickness')
                ylabel('Critical Shortening Factor')
        end
    else
        h1=inputdlg({'Min. thickness ratio','Max. thickness ratio ','Thickness ratio increment'},'',1,{'0.01','0.4','0.01'});
        h=str2double(h1{1}):str2double(h1{3}):str2double(h1{2});
        scritperf=zeros(1,length(h));
        scritslide=zeros(1,length(h));
        for i=1:length(h)
            hr=h(i);
            hm=1;
            [s1perf,s2perf,s3perf,s4perf]=UniaxialPerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
            [s1slide,s2slide,s3slide,s4slide]=UniaxialSlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
            scritperf(i)=max([s1perf s2perf s3perf s4perf]);
            scritslide(i)=max([s1slide s2slide s3slide s4slide]);
        end
        figure
        plot(h,scritperf,'r',h,scritslide,'k')
        legend('Perfectly Bonded','Sliding Layers','Location','SouthEast')
        title(['Equi-Biaxial Compression   cr/cm=',num2str(cr/cm)])
        xlabel('Ratio of Thickness')
        ylabel('Critical Shortening Factor')
    end
     
 
    
    
elseif loading==2 && var==1 && bond ==1 %Biaxial, Normalized Wavelength, Perfectly 
    if emptyCR==1 || emptyCM==1 || emptyHR==1 || emptyHM==1 || emptyminar==1 || emptymaxar==1 || cr<=0 || cm<=0 || hr<=0 || hm<=0 || minar<=0 || maxar<=0 || incar<=0
        msgbox('Please enter values of greater than 0 in all input boxes.')
    else
        [s1,s2,s3,s4]=PerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);

        figure
        plot(ar1,s1,'r*',ar2,s2,'b',ar3,s3,'ks',ar4,s4,'g');
        legend('Mode 1','Mode 2','Mode 3','Mode 4','Location','SouthEast');
        %axis([0 0.8 0.2 1.05])
        title(['Equi-Biaxial Compression Perfectly Bonded   Cr/Cm=',num2str(cr/cm),'   hr/hm=',num2str(hr/hm)]) 
        xlabel('Normalized Wavelength')
        ylabel('Shortening Factor')
        
        k=k+1;
        row = get(handles.uitable1,'Data');
        sall=[s1 s2 s3 s4];
        arall=[ar1 ar2 ar3 ar4];
        [CritShort,locationofCritShort]=max(sall);
        Critar=arall(locationofCritShort);
        row{k,1}='Equi-Biaxial Compression';
        row{k,2}='Perfect';
        row{k,3}=cr/cm;
        row{k,4}=hr/hm;
        row{k,5}=CritShort;
        row{k,6}=Critar;
        set(handles.uitable1,'Data',row)
    end
    
    
    
elseif loading==2 && var==1 && bond==2  %Biaxial, Normalized, Wavelength, Sliding
    if emptyCR==1 || emptyCM==1 || emptyHR==1 || emptyHM==1 || emptyminar==1 || emptymaxar==1 || cr<=0 || cm<=0 || hr<=0 || hm<=0 || minar<=0 || maxar<=0 || incar<=0
        msgbox('Please enter values of greater or equal to 0 in all input boxes.')
    else
        if minar<0.1
            questminar = questdlg('A value of greater or equal to 0.1 for normalised wavelngth is needed to give an accurate graph','Warning','OK','Continue Anyway','OK');
            switch questminar
                case 'OK'
                case 'Continue Anyway'
                    [s1,s2,s3,s4]=SlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                    
                    figure
                    plot(ar1,s1,'r*',ar2,s2,'b',ar3,s3,'ks',ar4,s4,'g');
                    title(['Equi-Biaxial Compression Sliding Layers   Cr/Cm=',num2str(cr/cm),'   hr/hm=',num2str(hr/hm)])
                    legend('Mode 1','Mode 2','Mode 3','Mode 4','Location','SouthEast');
                    xlabel('Normalized Wavelength')
                    ylabel('Shortening Factor')
                    %axis([0.1 0.8 0.3 1])
            
                    k=k+1;
                    row = get(handles.uitable1,'Data');
                    sall=[s1 s2 s3 s4];
                    arall=[ar1 ar2 ar3 ar4];
                    [CritShort,locationofCritShort]=max(sall);
                    Critar=arall(locationofCritShort);
                    row{k,1}='Uniaxial Compression';
                    row{k,2}='Sliding Layers';
                    row{k,3}=cr/cm;
                    row{k,4}=hr/hm;
                    row{k,5}=CritShort;
                    row{k,6}=Critar;
                    set(handles.uitable1,'Data',row)
            end
        else
            [s1,s2,s3,s4]=SlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
            
            figure
            plot(ar1,s1,'r*',ar2,s2,'b',ar3,s3,'ks',ar4,s4,'g');
            title(['Equi-Biaxial Compression Sliding Layers   Cr/Cm=',num2str(cr/cm),'   hr/hm=',num2str(hr/hm)])
            legend('Mode 1','Mode 2','Mode 3','Mode 4','Location','SouthEast');
            xlabel('Normalized Wavelength')
            ylabel('Shortening Factor')
            %axis([0.1 0.8 0.3 1])
            
            k=k+1;
            row = get(handles.uitable1,'Data');
            sall=[s1 s2 s3 s4];
            arall=[ar1 ar2 ar3 ar4];
            [CritShort,locationofCritShort]=max(sall);
            Critar=arall(locationofCritShort);
            row{k,1}='Equi-Biaxial Compression ';
            row{k,2}='Sliding Layers';
            row{k,3}=cr/cm;
            row{k,4}=hr/hm;
            row{k,5}=CritShort;
            row{k,6}=Critar;
            set(handles.uitable1,'Data',row)
        end
    end
    
    
    
    
elseif loading==2 && var==1 && bond==3  %Biaxial, Normalized Wavelength, Both
    if emptyCR==1 || emptyCM==1 || emptyHR==1 || emptyHM==1 || emptyminar==1 || emptymaxar==1 || cr<=0 || cm<=0 || hr<=0 || hm<=0 || minar<=0 || maxar<=0 || incar<=0
        msgbox('Please enter values of greater or equal to 0 in all input boxes.')
    else
        if minar<0.1
            questminar = questdlg('A value of greater or equal to 0.1 for normalised wavelngth is needed to give an accurate graph','Warning','OK','Continue Anyway','OK');
            switch questminar
                case 'OK'
                case 'Continue Anyway'
                    [sperf1,sperf2]=PerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                    [sslide1,sslide2]=SlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);  
                    
                    figure
                    plot(ar1,sperf1,'r*',ar1,sslide1,'ks',ar2,sperf2,'b',ar2,sslide2,'g')
                    legend('Mode 1 Perfectly Bonded','Mode 1 Sliding Layers','Mode 2 Perfectly Bonded','Mode 2 Sliding Layers ','Location','SouthEast')
                    title(['Equi-Biaxial Compression Cr/Cm=',num2str(cr/cm),'   hr/hm=',num2str(hr/hm)])
                    xlabel('Normalized Wavelength')
                    ylabel('Shortening Factor')
                    %axis([0.17 0.8 0.8 1])
            end
        else
            [sperf1,sperf2]=PerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
            [sslide1,sslide2]=SlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
            
            figure
            plot(ar1,sperf1,'r*',ar1,sslide1,'ks',ar2,sperf2,'b',ar2,sslide2,'g')
            legend('Mode 1 Perfectly Bonded','Mode 1 Sliding Layers','Mode 2 Perfectly Bonded','Mode 2 Sliding Layers ','Location','SouthEast')
            title(['Equi-Biaxial Compression Cr/Cm=',num2str(cr/cm),'   hr/hm=',num2str(hr/hm)])
            xlabel('Normalized Wavelength')
            ylabel('Shortening Factor')
            %axis([0.17 0.8 0.8 1])
        end
    end
    
     
     
     
elseif loading==2 && var==2 && bond ==1  %Biaxial, Material Constant Ratio, Perfectly 
    if emptyHR==1 || emptyHM==1 || emptyminar==1 || emptymaxar==1 || hr<=0 || hm<=0 || minar<=0 || maxar<=0 || incar<=0
        msgbox('Please enter values of greater or equal to 0 in half thickness and normalised wavelength input boxes.')
    else
        c1=inputdlg({'Min. material constant','Max. material constant','Material constant increment'},'',1,{'1','100','5'});
        c=str2double(c1{1}):str2double(c1{3}):str2double(c1{2});
        scrit=zeros(1,length(c));
        for i=1:length(c)
            cr=c(i);
            cm=1;
            [s1,s2,s3,s4]=PerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
            scrit(i)=max([s1 s2 s3 s4]);
        end
        figure
        plot(c,scrit)
        title(['Equi-Biaxial Compression Perfectly Bonded     hr/hm=',num2str(hr/hm)])
        xlabel('Ratio of Material Constants')
        ylabel('Critical Shortening Factor')
        %axis([0 200 0 1])
    end

    
    
    
elseif loading==2 && var==2 && bond ==2  %Biaxial, Material Constant Ratio, Sliding
    if emptyHR==1 || emptyHM==1 || emptyminar==1 || emptymaxar==1 || hr<=0 || hm<=0 || minar<=0 || maxar<=0 || incar<=0
        msgbox('Please enter values of greater or equal to 0 in half thickness and normalised wavelength input boxes.')
    else
        if minar<0.1
            questminar = questdlg('A value of greater or equal to 0.1 for Minimum Normalised wavelength is needed to give an accurate graph','Warning','OK','Continue Anyway','OK');
            switch questminar
                case 'OK'
                case 'Continue Anyway'
                    c1=inputdlg({'Min. material constant','Max. material constant','Material constant increment'},'',1,{'1','100','5'});
                    c=str2double(c1{1}):str2double(c1{3}):str2double(c1{2});
                    scrit=zeros(1,length(c));
                    for i=1:length(c)
                        cr=c(i);
                        cm=1;
                        [s1,s2,s3,s4]=SlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                        scrit(i)=max([s1 s2 s3 s4]);
                    end
                    figure
                    plot(c,scrit)
                    title(['Equi-Biaxial Compression Sliding Layers   hr/hm=',num2str(hr/hm)])
                    xlabel('Ratio of Material Constants')
                    ylabel('Critical Shortening Factor')
                    %axis([0 200 0.75 1])
            end
        else
            c1=inputdlg({'Min. material constant','Max. material constant','Material constant increment'},'',1,{'1','100','5'});
            c=str2double(c1{1}):str2double(c1{3}):str2double(c1{2});
            scrit=zeros(1,length(c));
            for i=1:length(c)
                cr=c(i);
                cm=1;
                [s1,s2,s3,s4]=SlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                scrit(i)=max([s1 s2 s3 s4]);
            end
            figure
            plot(c,scrit)
            title(['Equi-Biaxial Compression Sliding Layers   hr/hm=',num2str(hr/hm)])
            xlabel('Ratio of Material Constants')
            ylabel('Critical Shortening Factor')
            %axis([0 200 0.75 1])
        end
    end
    
    
    

elseif loading==2 && var==2 && bond==3  %Biaxial, Material Constant Ratio, Both
    if emptyHR==1 || emptyHM==1 || emptyminar==1 || emptymaxar==1 || hr<=0 || hm<=0 || minar<=0 || maxar<=0 || incar<=0
        msgbox('Please enter values of greater or equal to 0 in half thickness and normalised wavelength input boxes.')
    else
        if minar<0.1
            questminar = questdlg('A value of greater or equal to 0.1 for Minimum Normalised wavelength is needed to give an accurate graph','Warning','OK','Continue Anyway','OK');
            switch questminar
                case 'OK'
                case 'Continue Anyway'
                    c1=inputdlg({'Min. material constant','Max. material constant','Material constant increment'},'',1,{'1','100','5'});
                    c=str2double(c1{1}):str2double(c1{3}):str2double(c1{2});
                    scritperf=zeros(1,length(c));
                    scritslide=zeros(1,length(c));
                    for i=1:length(c)
                        cr=c(i);
                        cm=1;
                        [s1perf,s2perf,s3perf,s4perf]=PerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                        [s1slide,s2slide,s3slide,s4slide]=SlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                        scritperf(i)=max([s1perf s2perf s3perf s4perf]);
                        scritslide(i)=max([s1slide s2slide s3slide s4slide]);
                    end
                    figure
                    plot(c,scritperf,'r',c,scritslide,'k')
                    legend('Perfectly Bonded','Sliding Layers','Location','SouthEast')
                    title(['Equi-Biaxial Compression   hr/hm=',num2str(hr/hm)])
                    xlabel('Ratio of Material Constants')
                    ylabel('Critical Shortening Factor')
                    %axis([0 200 0 1])
            end
        else
            c1=inputdlg({'Min. material constant','Max. material constant','Material constant increment'},'',1,{'1','100','5'});
            c=str2double(c1{1}):str2double(c1{3}):str2double(c1{2});
            scritperf=zeros(1,length(c));
            scritslide=zeros(1,length(c));
            for i=1:length(c)
                cr=c(i);
                cm=1;
                [s1perf,s2perf,s3perf,s4perf]=PerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                [s1slide,s2slide,s3slide,s4slide]=SlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                scritperf(i)=max([s1perf s2perf s3perf s4perf]);
                scritslide(i)=max([s1slide s2slide s3slide s4slide]);
            end
            figure
            plot(c,scritperf,'r',c,scritslide,'k')
            legend('Perfectly Bonded','Sliding Layers','Location','SouthEast')
            title(['Equi-Biaxial Compression   hr/hm=',num2str(hr/hm)])
            xlabel('Ratio of Material Constants')
            ylabel('Critical Shortening Factor')
            %axis([0 200 0 1])
        end
    end
    
    
    
      
      
elseif loading==2 && var==3 && bond ==1  %Biaxial, Thickness Ratio, Perfectly 
    if emptyCR==1 || emptyCM==1 || emptyminar==1 || emptymaxar==1 || cr<=0 || cm<=0 || minar<=0 || maxar<=0 || incar<=0
        msgbox('Please enter values of greater or equal to 0 in material constant and normalised wavelength input boxes.')
    else
        h1=inputdlg({'Min. thickness ratio','Max. thickness ratio ','Thickness ratio increment'},'',1,{'0.01','0.4','0.01'});
        h=str2double(h1{1}):str2double(h1{3}):str2double(h1{2});
        scrit=zeros(1,length(h));
        for i=1:length(h)
            hr=h(i);
            hm=1;
            [s1,s2,s3,s4]=PerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
            scrit(i)=max([s1 s2 s3 s4]);
        end
        figure
        plot(h,scrit)
        title(['Equi-Biaxial Compression Perfectly Bonded   cr/cm=',num2str(cr/cm)])
        xlabel('Ratio of Thickness')
        ylabel('Critical Shortening Factor')
    end

    
    
    
elseif loading==2 && var==3 && bond ==2  %Biaxial, Thickness Ratio, Sliding
     if emptyCR==1 || emptyCM==1 || emptyminar==1 || emptymaxar==1 || cr<=0 || cm<=0 || minar<=0 || maxar<=0 || incar<=0
        msgbox('Please enter values of greater or equal to 0 in material constant and normalised wavelength input boxes.')
     else
         if minar<0.1
            questminar = questdlg('A value of greater or equal to 0.1 for Minimum Normalised wavelength is needed to give an accurate graph','Warning','OK','Continue Anyway','OK');
            switch questminar
                case 'OK'
                case 'Continue Anyway'
                    h1=inputdlg({'Min. thickness ratio','Max. thickness ratio ','Thickness ratio increment'},'',1,{'0.01','0.4','0.01'});
                    h=str2double(h1{1}):str2double(h1{3}):str2double(h1{2});
                    scrit=zeros(1,length(h));
                    for i=1:length(h)
                        hr=h(i);
                        hm=1;
                        [s1,s2,s3,s4]=SlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                        scrit(i)=max([s1 s2 s3 s4]);
                    end
                    figure
                    plot(h,scrit)
                    title(['Equi-Biaxial Compression Sliding Layers   cr/cm=',num2str(cr/cm)])
                    xlabel('Ratio of Thickness')
                    ylabel('Critical Shortening Factor')   
            end
         else
             h1=inputdlg({'Min. thickness ratio','Max. thickness ratio ','Thickness ratio increment'},'',1,{'0.01','0.4','0.01'});
             h=str2double(h1{1}):str2double(h1{3}):str2double(h1{2});
             scrit=zeros(1,length(h));
             for i=1:length(h)
                 hr=h(i);
                 hm=1;
                 [s1,s2,s3,s4]=SlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                 scrit(i)=max([s1 s2 s3 s4]);
             end
             figure
             plot(h,scrit)
             title(['Equi-Biaxial Compression Sliding Layers   cr/cm=',num2str(cr/cm)])
             xlabel('Ratio of Thickness')
             ylabel('Critical Shortening Factor')
         end
     end
    
        
        
elseif loading==2 && var==3 && bond==3 %Biaxial, Thickness Ratio, Both
     if emptyCR==1 || emptyCM==1 || emptyminar==1 || emptymaxar==1 || cr<=0 || cm<=0 || minar<=0 || maxar<=0 || incar<=0
        msgbox('Please enter values in material constant and normalised wavelength input boxes.')
     else
         if minar<0.1
            questminar = questdlg('A value of greater or equal to 0.1 for Minimum Normalised wavelength is needed to give an accurate graph','Warning','OK','Continue Anyway','OK');
            switch questminar
                case 'OK'
                case 'Continue Anyway'
                    h1=inputdlg({'Min. thickness ratio','Max. thickness ratio ','Thickness ratio increment'},'',1,{'0.01','0.4','0.01'});
                    h=str2double(h1{1}):str2double(h1{3}):str2double(h1{2});
                    scritperf=zeros(1,length(h));
                    scritslide=zeros(1,length(h));
                    for i=1:length(h)
                        hr=h(i);
                        hm=1;
                        [s1perf,s2perf,s3perf,s4perf]=PerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                        [s1slide,s2slide,s3slide,s4slide]=SlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                        scritperf(i)=max([s1perf s2perf s3perf s4perf]);
                        scritslide(i)=max([s1slide s2slide s3slide s4slide]);
                    end
                    figure
                    plot(h,scritperf,'r',h,scritslide,'k')
                    legend('Perfectly Bonded','Sliding Layers','Location','SouthEast')
                    title(['Equi-Biaxial Compression   cr/cm=',num2str(cr/cm)])
                    xlabel('Ratio of Thickness')
                    ylabel('Critical Shortening Factor')
            end
         else
             h1=inputdlg({'Min. thickness ratio','Max. thickness ratio ','Thickness ratio increment'},'',1,{'0.01','0.4','0.01'});
             h=str2double(h1{1}):str2double(h1{3}):str2double(h1{2});
             scritperf=zeros(1,length(h));
             scritslide=zeros(1,length(h));
             for i=1:length(h)
                 hr=h(i);
                 hm=1;
                 [s1perf,s2perf,s3perf,s4perf]=PerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                 [s1slide,s2slide,s3slide,s4slide]=SlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                 scritperf(i)=max([s1perf s2perf s3perf s4perf]);
                 scritslide(i)=max([s1slide s2slide s3slide s4slide]);
             end
             figure
             plot(h,scritperf,'r',h,scritslide,'k')
             legend('Perfectly Bonded','Sliding Layers','Location','SouthEast')
             title(['Equi-Biaxial Compression   cr/cm=',num2str(cr/cm)])
             xlabel('Ratio of Thickness')
             ylabel('Critical Shortening Factor')
         end
     end
     

     
     
elseif loading==3 && var==1 && bond==1 %Uni and Bi, Normalized Wavelength, Perfectly
    if emptyCR==1 || emptyCM==1 || emptyHR==1 || emptyHM==1 || emptyminar==1 || emptymaxar==1 || cr<=0 || cm<=0 || hr<=0 || hm<=0 || minar<=0 || maxar<=0 || incar<=0
        msgbox('Please enter values of greater than 0 in all input boxes.')
        return
    end
    [s1Bi,s2Bi]=PerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
    [s1Uni,s2Uni]=UniaxialPerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
    
    figure
    plot(ar1,s1Bi,'b',ar2,s2Bi,'g*',ar1,s1Uni,'r',ar2,s2Uni,'ko')
    legend('Equi-Biaxial Mode 1','Equi-Biaxial Mode 2','Uniaxial Mode 1','Uniaxial Mode 2','Location','SouthEast')
    title(['Equi-Biaxial and Uniaxial Compression Perfectly Bonded   cr/cm=',num2str(cr/cm),'  hr/hm=',num2str(hr/hm)])
    ylabel('Shortening Factor')
    
    
    
    
elseif loading==3 && var==1 && bond==2   %Uni and Bi, Normalised Wavelength, Sliding
    if emptyCR==1 || emptyCM==1 || emptyHR==1 || emptyHM==1 || emptyminar==1 || emptymaxar==1 || cr<=0 || cm<=0 || hr<=0 || hm<=0 || minar<=0 || maxar<=0 || incar<=0
        msgbox('Please enter values of greater than 0 in all input boxes.')
        return
    end
    if minar<0.1
        questminar = questdlg('A value of greater or equal to 0.1 for Minimum Normalised wavelength is needed to give an accurate graph','Warning','OK','Continue Anyway','OK');
        switch questminar
            case 'OK'
            case 'Continue Anyway'
            [s1Bi,s2Bi]=SlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
            [s1Uni,s2Uni]=UniaxialSlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
    
            figure
            plot(ar1,s1Bi,'b',ar2,s2Bi,'g*',ar1,s1Uni,'r',ar2,s2Uni,'ko')
            legend('Equi-Biaxial Mode 1','Equi-Biaxial Mode 2','Uniaxial Mode 1','Uniaxial Mode 2','Location','SouthEast')
            title(['Equi-Biaxial and Uniaxial Compression Sliding Layers   cr/cm=',num2str(cr/cm),'  hr/hm=',num2str(hr/hm)])
            ylabel('Shortening Factor')
        end
    else
        [s1Bi,s2Bi]=SlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
        [s1Uni,s2Uni]=UniaxialSlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
            
        figure
        plot(ar1,s1Bi,'b',ar2,s2Bi,'g*',ar1,s1Uni,'r',ar2,s2Uni,'ko')
        legend('Equi-Biaxial Mode 1','Equi-Biaxial Mode 2','Uniaxial Mode 1','Uniaxial Mode 2','Location','SouthEast')
        title(['Equi-Biaxial and Uniaxial Compression Sliding Layers   cr/cm=',num2str(cr/cm),'  hr/hm=',num2str(hr/hm)])
        ylabel('Shortening Factor')
        xlabel('Normalised Wavelngth')
    end
    
    
    
    
elseif loading==3 && var==1 && bond==3   %Uni and Bi, Normalised Wavelength, Perfect & Sliding 
    if emptyCR==1 || emptyCM==1 || emptyHR==1 || emptyHM==1 || emptyminar==1 || emptymaxar==1 || cr<=0 || cm<=0 || hr<=0 || hm<=0 || minar<=0 || maxar<=0 || incar<=0
        msgbox('Please enter values of greater than 0 in all input boxes.')
        return
    end
    if minar<0.1
        questminar = questdlg('A value of greater or equal to 0.1 for Minimum Normalised wavelength is needed to give an accurate graph','Warning','OK','Continue Anyway','OK');
        switch questminar
            case 'OK'
            case 'Continue Anyway'
                [s1BiSlide,s2BiSlide]=SlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                [s1UniSlide,s2UniSlide]=UniaxialSlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                [s1BiPerf,s2BiPerf]=PerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                [s1UniPerf,s2UniPerf]=UniaxialPerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                
                figure
                plot(ar1,s1BiSlide,'b',ar2,s2BiSlide,'g*',ar1,s1UniSlide,'r',ar2,s2UniSlide,'ko',ar1,s1BiPerf,'m',ar2,s2BiPerf,'c.',ar1,s1UniPerf,'y',ar2,s2UniPerf,'kd')
                legend('Equi-Biaxial Sliding Mode 1','Equi-Biaxial Sliding Mode 2','Uniaxial Sliding Mode 1','Uniaxial Sliding Mode 2','Equi-Biaxial Perfectly Bonded Mode 1','Equi-Biaxial Perfectly Bonded Mode 2','Uniaxial Mode Perfectly Bonded 1','Uniaxial Perfectly Bonded Mode 2','Location','SouthEast')
                title(['Equi-Biaxial and Uniaxial Compression   cr/cm=',num2str(cr/cm),'  hr/hm=',num2str(hr/hm)])
                ylabel('Shortening Factor')
                xlabel('Normalised Wavelength')
        end
    else
        [s1BiSlide,s2BiSlide]=SlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
        [s1UniSlide,s2UniSlide]=UniaxialSlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
        [s1BiPerf,s2BiPerf]=PerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
        [s1UniPerf,s2UniPerf]=UniaxialPerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
              
        figure
        plot(ar1,s1BiSlide,'b',ar2,s2BiSlide,'g*',ar1,s1UniSlide,'r',ar2,s2UniSlide,'ko',ar1,s1BiPerf,'m',ar2,s2BiPerf,'c.',ar1,s1UniPerf,'y',ar2,s2UniPerf,'kd')
        legend('Equi-Biaxial Sliding Mode 1','Equi-Biaxial Sliding Mode 2','Uniaxial Sliding Mode 1','Uniaxial Sliding Mode 2','Equi-Biaxial Perfectly Bonded Mode 1','Equi-Biaxial Perfectly Bonded Mode 2','Uniaxial Mode Perfectly Bonded 1','Uniaxial Perfectly Bonded Mode 2','Location','SouthEast')
        title(['Equi-Biaxial and Uniaxial Compression   cr/cm=',num2str(cr/cm),'  hr/hm=',num2str(hr/hm)])
        ylabel('Shortening Factor')
        xlabel('Normalised Wavelength')
    end
    
    
    
    
elseif loading==3 && var==2 && bond==1   %Uni and Bi, Material Constant Ratio, Perfect 
    if emptyHR==1 || emptyHM==1 || emptyminar==1 || emptymaxar==1 || hr<=0 || hm<=0 || minar<=0 || maxar<=0 || incar<=0
        msgbox('Please enter values for thickness ratio and normalised wavelength input boxes.')
        return
    end
    c1=inputdlg({'Min. material constant','Max. material constant','Material constant increment'},'',1,{'1','100','5'});
    c=str2double(c1{1}):str2double(c1{3}):str2double(c1{2});
    scritUni=zeros(1,length(c));
    scritBi=zeros(1,length(c));
    for i=1:length(c)
        cr=c(i);
        cm=1;
        [s1Bi,s2Bi,s3Bi,s4Bi]=PerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
        [s1Uni,s2Uni,s3Uni,s4Uni]=UniaxialPerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
        scritBi(i)=max([s1Bi s2Bi s3Bi s4Bi]);
        scritUni(i)=max([s1Uni s2Uni s3Uni s4Uni]);
    end
    figure
    plot(c,scritBi,'b',c,scritUni,'g') 
    legend('Equi-Biaxial Perfect','Uniaxial Perfect','Location','SouthEast')
    title(['Equi-Biaxial and Uniaxial Compression   hr/hm=',num2str(hr/hm)])
    ylabel('Critical Shortening Factor')
    xlabel('Material Constant Ratio cr/cm')

    
    
elseif loading==3 && var==2 && bond==2   %Uni and Bi, Material Constant Ratio, Sliding 
    if emptyHR==1 || emptyHM==1 || emptyminar==1 || emptymaxar==1 || hr<=0 || hm<=0 || minar<=0 || maxar<=0 || incar<=0
        msgbox('Please enter values for thickness ratio and normalised wavelength input boxes.')
        return
    end
     if minar<0.1
        questminar = questdlg('A value of greater or equal to 0.1 for Minimum Normalised wavelength is needed to give an accurate graph','Warning','OK','Continue Anyway','OK');
        switch questminar
            case 'OK'
            case 'Continue Anyway'
                c1=inputdlg({'Min. material constant','Max. material constant','Material constant increment'},'',1,{'1','100','5'});
                c=str2double(c1{1}):str2double(c1{3}):str2double(c1{2});
                scritUni=zeros(1,length(c));
                scritBi=zeros(1,length(c));
                for i=1:length(c)
                    cr=c(i);
                    cm=1;
                    [s1Bi,s2Bi,s3Bi,s4Bi]=SlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                    [s1Uni,s2Uni,s3Uni,s4Uni]=UniaxialSlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                    scritBi(i)=max([s1Bi s2Bi s3Bi s4Bi]);
                    scritUni(i)=max([s1Uni s2Uni s3Uni s4Uni]);
                end
                figure
                plot(c,scritBi,'b',c,scritUni,'g') 
                legend('Equi-Biaxial Sliding','Uniaxial Sliding','Location','SouthEast')
                title(['Equi-Biaxial and Uniaxial Compression   hr/hm=',num2str(hr/hm)])
                ylabel('Critical Shortening Factor')
                xlabel('Material Constant Ratio cr/cm')
        end
     else
        c1=inputdlg({'Min. material constant','Max. material constant','Material constant increment'},'',1,{'1','100','5'});
        c=str2double(c1{1}):str2double(c1{3}):str2double(c1{2});
        scritUni=zeros(1,length(c));
        scritBi=zeros(1,length(c));
        for i=1:length(c)
            cr=c(i);
            cm=1;
            [s1Bi,s2Bi,s3Bi,s4Bi]=SlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
            [s1Uni,s2Uni,s3Uni,s4Uni]=UniaxialSlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
            scritBi(i)=max([s1Bi s2Bi s3Bi s4Bi]);
            scritUni(i)=max([s1Uni s2Uni s3Uni s4Uni]);
        end
        figure
        plot(c,scritBi,'b',c,scritUni,'g') 
        legend('Equi-Biaxial Sliding','Uniaxial Sliding','Location','SouthEast')
        title(['Equi-Biaxial and Uniaxial Compression   hr/hm=',num2str(hr/hm)])
        ylabel('Critical Shortening Factor')
        xlabel('Material Constant Ratio cr/cm')
     end
    
     
     
elseif loading==3 && var==2 && bond==3   %Uni and Bi, Material Constant Ratio, Perfect and Sliding 
    if emptyHR==1 || emptyHM==1 || emptyminar==1 || emptymaxar==1 || hr<=0 || hm<=0 || minar<=0 || maxar<=0 || incar<=0
        msgbox('Please enter values for thickness ratio and normalised wavelength input boxes.')
        return
    end
    if minar<0.1
        questminar = questdlg('A value of greater or equal to 0.1 for Minimum Normalised wavelength is needed to give an accurate graph','Warning','OK','Continue Anyway','OK');
        switch questminar
            case 'OK'
            case 'Continue Anyway'
                c1=inputdlg({'Min. material constant','Max. material constant','Material constant increment'},'',1,{'1','100','5'});
                c=str2double(c1{1}):str2double(c1{3}):str2double(c1{2});
                scritUniPerf=zeros(1,length(c));
                scritBiPerf=zeros(1,length(c));
                scritBiSlide=zeros(1,length(c));
                scritUniSlide=zeros(1,length(c));
                for i=1:length(c)
                    cr=c(i);
                    cm=1;
                    [s1BiPerf,s2BiPerf,s3BiPerf,s4BiPerf]=PerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                    [s1UniPerf,s2UniPerf,s3UniPerf,s4UniPerf]=UniaxialPerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                    [s1BiSlide,s2BiSlide,s3BiSlide,s4BiSlide]=SlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                    [s1UniSlide,s2UniSlide,s3UniSlide,s4UniSlide]=UniaxialSlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                    
                    scritBiPerf(i)=max([s1BiPerf s2BiPerf s3BiPerf s4BiPerf]);
                    scritUniPerf(i)=max([s1UniPerf s2UniPerf s3UniPerf s4UniPerf]);
                    scritBiSlide(i)=max([s1BiSlide s2BiSlide s3BiSlide s4BiSlide]);
                    scritUniSlide(i)=max([s1UniSlide s2UniSlide s3UniSlide s4UniSlide]);
                end
                figure
                plot(c,scritBiPerf,'b',c,scritUniPerf,'g.',c,scritBiSlide,'k',c,scritUniSlide,'m*') 
                legend('Equi-Biaxial Perfect','Uniaxial Perfect','Equi-Biaxial Sliding','Uniaxial Sliding','Location','SouthEast')
                title(['Equi-Biaxial and Uniaxial Compression   hr/hm=',num2str(hr/hm)])
                ylabel('Critical Shortening Factor')
                xlabel('Material Constant Ratio cr/cm')
        end
     else
         c1=inputdlg({'Min. material constant','Max. material constant','Material constant increment'},'',1,{'1','100','5'});
         c=str2double(c1{1}):str2double(c1{3}):str2double(c1{2});
         scritUniPerf=zeros(1,length(c));
         scritBiPerf=zeros(1,length(c));
         scritBiSlide=zeros(1,length(c));
         scritUniSlide=zeros(1,length(c));
         for i=1:length(c)
             cr=c(i);
             cm=1;
             [s1BiPerf,s2BiPerf,s3BiPerf,s4BiPerf]=PerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
             [s1UniPerf,s2UniPerf,s3UniPerf,s4UniPerf]=UniaxialPerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
             [s1BiSlide,s2BiSlide,s3BiSlide,s4BiSlide]=SlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
             [s1UniSlide,s2UniSlide,s3UniSlide,s4UniSlide]=UniaxialSlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                 
             scritBiPerf(i)=max([s1BiPerf s2BiPerf s3BiPerf s4BiPerf]);
             scritUniPerf(i)=max([s1UniPerf s2UniPerf s3UniPerf s4UniPerf]);
             scritBiSlide(i)=max([s1BiSlide s2BiSlide s3BiSlide s4BiSlide]);
             scritUniSlide(i)=max([s1UniSlide s2UniSlide s3UniSlide s4UniSlide]);
         end
         figure
         plot(c,scritBiPerf,'b',c,scritUniPerf,'g.',c,scritBiSlide,'k',c,scritUniSlide,'m*') 
         legend('Equi-Biaxial Perfect','Uniaxial Perfect','Equi-Biaxial Sliding','Uniaxial Sliding','Location','SouthEast')
         title(['Equi-Biaxial and Uniaxial Compression   hr/hm=',num2str(hr/hm)])
         ylabel('Critical Shortening Factor')
         xlabel('Material Constant Ratio cr/cm')
     end
     
     
     
elseif loading==3 && var==3 && bond==1   %Uni and Bi, Thickness Ratio, Perfect
    if emptyCR==1 || emptyCM==1 || emptyminar==1 || emptymaxar==1 || cr<=0 || cm<=0 || minar<=0 || maxar<=0 || incar<=0
        msgbox('Please enter values in material constant and normalised wavelength input boxes.')
        return
    end
    h1=inputdlg({'Min. thickness ratio','Max. thickness ratio ','Thickness ratio increment'},'',1,{'0.01','0.4','0.01'});
    h=str2double(h1{1}):str2double(h1{3}):str2double(h1{2});
    scritUni=zeros(1,length(h));
    scritBi=zeros(1,length(h));
    for i=1:length(h)
        hr=h(i);
        hm=1;
        [s1Uni,s2Uni]=UniaxialPerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
        [s1Bi,s2Bi]=PerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
        scritUni(i)=max([s1Uni s2Uni]);
        scritBi(i)=max([s1Bi s2Bi]);
    end
    figure
    plot(h,scritBi,'b',h,scritUni,'g') 
    legend('Equi-Biaxial Perfect','Uniaxial Perfect','Location','SouthEast')
    title(['Equi-Biaxial and Uniaxial Compression   cr/cm=',num2str(cr/cm)])
    ylabel('Critical Shortening Factor')
    xlabel('Material Thickness Ratio hr/hm')
    
    
    
    
elseif loading==3 && var==3 && bond==2   %Uni and Bi, Thickness Ratio, Sliding
    if emptyCR==1 || emptyCM==1 || emptyminar==1 || emptymaxar==1 || cr<=0 || cm<=0 || minar<=0 || maxar<=0 || incar<=0
        msgbox('Please enter values in material constant and normalised wavelength input boxes.')
        return
    end
    if minar<0.1
        questminar = questdlg('A value of greater or equal to 0.1 for Minimum Normalised wavelength is needed to give an accurate graph','Warning','OK','Continue Anyway','OK');
        switch questminar
            case 'OK'
            case 'Continue Anyway'
                h1=inputdlg({'Min. thickness ratio','Max. thickness ratio ','Thickness ratio increment'},'',1,{'0.01','0.4','0.01'});
                h=str2double(h1{1}):str2double(h1{3}):str2double(h1{2});
                scritUni=zeros(1,length(h));
                scritBi=zeros(1,length(h));
                for i=1:length(h)
                    hr=h(i);
                    hm=1;
                    [s1Uni,s2Uni]=UniaxialSlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                    [s1Bi,s2Bi]=SlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                    scritUni(i)=max([s1Uni s2Uni]);
                    scritBi(i)=max([s1Bi s2Bi]);
                end
                figure
                plot(h,scritBi,'b',h,scritUni,'g') 
                legend('Equi-Biaxial Sliding','Uniaxial Sliding','Location','SouthEast')
                title(['Equi-Biaxial and Uniaxial Compression   cr/cm=',num2str(cr/cm)])
                ylabel('Critical Shortening Factor')
                xlabel('Material Thickness Ratio hr/hm')
        end
    else
        h1=inputdlg({'Min. thickness ratio','Max. thickness ratio ','Thickness ratio increment'},'',1,{'0.01','0.4','0.01'});
        h=str2double(h1{1}):str2double(h1{3}):str2double(h1{2});
        scritUni=zeros(1,length(h));
        scritBi=zeros(1,length(h));
        for i=1:length(h)
            hr=h(i);
            hm=1;
            [s1Uni,s2Uni]=UniaxialSlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
            [s1Bi,s2Bi]=SlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
            scritUni(i)=max([s1Uni s2Uni]);
            scritBi(i)=max([s1Bi s2Bi]);
        end
        figure
        plot(h,scritBi,'b',h,scritUni,'g') 
        legend('Equi-Biaxial Sliding','Uniaxial Sliding','Location','SouthEast')
        title(['Equi-Biaxial and Uniaxial Compression   cr/cm=',num2str(cr/cm)])
        ylabel('Critical Shortening Factor')
        xlabel('Material Thickness Ratio hr/hm')
    end
    
    
    
elseif loading==3 && var==3 && bond==3   %Uni and Bi, Thickness Ratio, Perfect and Sliding  
    if emptyCR==1 || emptyCM==1 || emptyminar==1 || emptymaxar==1 || cr<=0 || cm<=0 || minar<=0 || maxar<=0 || incar<=0
        msgbox('Please enter values in material constant and normalised wavelength input boxes.')
        return
    end
    if minar<0.1
        questminar = questdlg('A value of greater or equal to 0.1 for Minimum Normalised wavelength is needed to give an accurate graph','Warning','OK','Continue Anyway','OK');
        switch questminar
            case 'OK'
            case 'Continue Anyway'
                h1=inputdlg({'Min. thickness ratio','Max. thickness ratio ','Thickness ratio increment'},'',1,{'0.01','0.4','0.01'});
                h=str2double(h1{1}):str2double(h1{3}):str2double(h1{2});
                scritUniPerf=zeros(1,length(h));
                scritBiPerf=zeros(1,length(h));
                scritBiSlide=zeros(1,length(h));
                scritUniSlide=zeros(1,length(h));
                for i=1:length(h)
                    hr=h(i);
                    hm=1;
                    [s1BiPerf,s2BiPerf,s3BiPerf,s4BiPerf]=PerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                    [s1UniPerf,s2UniPerf,s3UniPerf,s4UniPerf]=UniaxialPerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                    [s1BiSlide,s2BiSlide,s3BiSlide,s4BiSlide]=SlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                    [s1UniSlide,s2UniSlide,s3UniSlide,s4UniSlide]=UniaxialSlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                    
                    scritBiPerf(i)=max([s1BiPerf s2BiPerf s3BiPerf s4BiPerf]);
                    scritUniPerf(i)=max([s1UniPerf s2UniPerf s3UniPerf s4UniPerf]);
                    scritBiSlide(i)=max([s1BiSlide s2BiSlide s3BiSlide s4BiSlide]);
                    scritUniSlide(i)=max([s1UniSlide s2UniSlide s3UniSlide s4UniSlide]);
                end
                figure
                plot(h,scritBiPerf,'b',h,scritUniPerf,'g.',h,scritBiSlide,'k',h,scritUniSlide,'m*') 
                legend('Equi-Biaxial Perfect','Uniaxial Perfect','Equi-Biaxial Sliding','Uniaxial Sliding','Location','SouthEast')
                title(['Equi-Biaxial and Uniaxial Compression   cr/cm=',num2str(cr/cm)])
                ylabel('Critical Shortening Factor')
                xlabel('Material Thickness Ratio hr/hm')
        end
    else
        h1=inputdlg({'Min. thickness ratio','Max. thickness ratio ','Thickness ratio increment'},'',1,{'0.01','0.4','0.01'});
        h=str2double(h1{1}):str2double(h1{3}):str2double(h1{2});
        scritUniPerf=zeros(1,length(h));
        scritBiPerf=zeros(1,length(h));
        scritBiSlide=zeros(1,length(h));
        scritUniSlide=zeros(1,length(h));
        for i=1:length(h)
            hr=h(i);
            hm=1;
            [s1BiPerf,s2BiPerf,s3BiPerf,s4BiPerf]=PerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
            [s1UniPerf,s2UniPerf,s3UniPerf,s4UniPerf]=UniaxialPerfectlyBonded(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
            [s1BiSlide,s2BiSlide,s3BiSlide,s4BiSlide]=SlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
            [s1UniSlide,s2UniSlide,s3UniSlide,s4UniSlide]=UniaxialSlidingLayers(ar1,ar2,ar3,ar4,cr,cm,hr,hm);
                    
            scritBiPerf(i)=max([s1BiPerf s2BiPerf s3BiPerf s4BiPerf]);
            scritUniPerf(i)=max([s1UniPerf s2UniPerf s3UniPerf s4UniPerf]);
            scritBiSlide(i)=max([s1BiSlide s2BiSlide s3BiSlide s4BiSlide]);
            scritUniSlide(i)=max([s1UniSlide s2UniSlide s3UniSlide s4UniSlide]);
        end
        figure
        plot(h,scritBiPerf,'b',h,scritUniPerf,'g.',h,scritBiSlide,'k',h,scritUniSlide,'m*') 
        legend('Equi-Biaxial Perfect','Uniaxial Perfect','Equi-Biaxial Sliding','Uniaxial Sliding','Location','SouthEast')
        title(['Equi-Biaxial and Uniaxial Compression   cr/cm=',num2str(cr/cm)])
        ylabel('Critical Shortening Factor')
        xlabel('Material Thickness Ratio hr/hm')
    end
    
end

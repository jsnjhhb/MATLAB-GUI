function varargout = tuxiangchuli(varargin)
% TUXIANGCHULI MATLAB code for tuxiangchuli.fig
%      TUXIANGCHULI, by itself, creates a new TUXIANGCHULI or raises the existing
%      singleton*.
%
%      H = TUXIANGCHULI returns the handle to a new TUXIANGCHULI or the handle to
%      the existing singleton*.
%
%      TUXIANGCHULI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TUXIANGCHULI.M with the given input arguments.
%
%      TUXIANGCHULI('Property','Value',...) creates a new TUXIANGCHULI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before tuxiangchuli_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to tuxiangchuli_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help tuxiangchuli

% Last Modified by GUIDE v2.5 28-Apr-2019 14:52:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @tuxiangchuli_OpeningFcn, ...
                   'gui_OutputFcn',  @tuxiangchuli_OutputFcn, ...
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


% --- Executes just before tuxiangchuli is made visible.
function tuxiangchuli_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to tuxiangchuli (see VARARGIN)

% Choose default command line output for tuxiangchuli
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes tuxiangchuli wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = tuxiangchuli_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function close_Callback(hObject, eventdata, handles)
% hObject    handle to close (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --------------------------------------------------------------------
function Untitled_4_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global BW


% --------------------------------------------------------------------
function pingyi_Callback(hObject, eventdata, handles)
% hObject    handle to pingyi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global I
axes(handles.axes2);
I=getimage;
x=inputdlg('请输入x轴参数','',1);
y=inputdlg('请输入y轴参数','',1);
x=str2double(x);y=str2double(y);
se=translate(strel(1),[x,y]);
B=imdilate(I,se);
imshow(B);
handles.img=B;
guidata(hObject,handles);

% --------------------------------------------------------------------
function xuanzhuan_Callback(hObject, eventdata, handles)
% hObject    handle to xuanzhuan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global T
axes(handles.axes2);
T = getimage;
T=im2double(T);
arc=inputdlg('请输入旋转度数','',1);
arc=str2double(arc);
B= imrotate(T,arc);
imshow(B);
handles.img=B;
guidata(hObject,handles);

% --------------------------------------------------------------------
function suofang_Callback(hObject, eventdata, handles)
% hObject    handle to suofang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global T
axes(handles.axes2);
T = getimage;
T=im2double(T);
pr=inputdlg('请输入缩放比例','',1);
pr=str2double(pr);
B= imresize(T,pr,'nearest');
imshow(B);
handles.img=B;
guidata(hObject,handles);

% --------------------------------------------------------------------
function jianqie_Callback(hObject, eventdata, handles)
% hObject    handle to jianqie (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global T
axes(handles.axes2);
T = getimage;
T=im2double(T);
B=imcrop();
imshow(B);
handles.img=B;
guidata(hObject,handles);

% --------------------------------------------------------------------
function touying_Callback(hObject, eventdata, handles)
% hObject    handle to touying (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global T
axes(handles.axes2);
T = getimage;
T=im2double(T);
a=inputdlg({'请输入参数(1,1)','请输入参数(1,2)','请输入参数(1,3)','请输入参数(2,1)','请输入参数(2,2)','请输入参数(2,3)','请输入参数(3,1)','请输入参数(3,2)','请输入参数(3,3)'}); 
a1=str2num(a{1});
a2=str2num(a{2});
a3=str2num(a{3});
a4=str2num(a{4});
a5=str2num(a{5});
a6=str2num(a{6});
a7=str2num(a{7});
a8=str2num(a{8});
a9=str2num(a{9});
xform = [ a1 a2 a3
          a4 a5 a6
          a7 a8 a9 ];
tform_translate = maketform('projective', xform);
[y xdata ydata]= imtransform(T, tform_translate);
imshow(y);
guidata(hObject,handles);

% --------------------------------------------------------------------
function fangshe_Callback(hObject, eventdata, handles)
% hObject    handle to fangshe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global T
axes(handles.axes2);
T = getimage;
T=im2double(T);
a=inputdlg({'请输入参数(1,1)','请输入参数(1,2)','请输入参数(2,1)','请输入参数(2,2)','请输入参数(3,1)','请输入参数(3,2)'}); 
a1=str2num(a{1});
a2=str2num(a{2});
a3=str2num(a{3});
a4=str2num(a{4});
a5=str2num(a{5});
a6=str2num(a{6});
xform = [ a1  a2  0
          a3 a4  0
          a5 a6 1 ];
tform_translate = maketform('affine', xform);
[y xdata ydata]= imtransform(T, tform_translate);
imshow(y);
guidata(hObject,handles);



% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called   

% Hint: place code in OpeningFcn to populate axes1


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2


% --------------------------------------------------------------------
function open_Callback(hObject, eventdata, handles)
% hObject    handle to open (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename,pathname]=uigetfile({'*.*';'*.bmp';'*.tif';'*.png'},'select picture');
str=[pathname filename];  
im=imread(str);
handles.im=im;
axes(handles.axes1);
imshow(im);
axes(handles.axes2);
imshow(im);
handles.output=hObject;
guidata(hObject,handles);


% --------------------------------------------------------------------
function save_Callback(hObject, eventdata, handles)
% hObject    handle to save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename,pathname,filterindex]=uiputfile({'*.bmp';'*.tif';'*.png'},'save picture');   
if filterindex==0
return  
else
str=[pathname filename];
axes(handles.axes2);
imwrite(handles.img,str);  
end


% --------------------------------------------------------------------
function jinxiang_Callback(hObject, eventdata, handles)
% hObject    handle to jinxiang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global T
axes(handles.axes2);
T=getimage;
a= questdlg('要进行何种方式的镜像','select','水平','垂直','水平')
switch a
    case'水平'
        y=flip(T,1);
        imshow(y);
        handles.img=y;       
    case'垂直'
        y=flip(T,2);
        imshow(y);
        handles.img=y;
end
guidata(hObject,handles);

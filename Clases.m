function varargout = Clases(varargin)
% CLASES MATLAB code for Clases.fig
%      CLASES, by itself, creates a new CLASES or raises the existing
%      singleton*.
%
%      H = CLASES returns the handle to a new CLASES or the handle to
%      the existing singleton*.
%
%      CLASES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CLASES.M with the given input arguments.
%
%      CLASES('Property','Value',...) creates a new CLASES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Clases_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Clases_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Clases

% Last Modified by GUIDE v2.5 02-May-2023 21:31:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Clases_OpeningFcn, ...
                   'gui_OutputFcn',  @Clases_OutputFcn, ...
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


% --- Executes just before Clases is made visible.
function Clases_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Clases (see VARARGIN)
% Limpiamos la tabla para empezar a ingresar los datos
datos = get(handles.uitable1, 'Data');
datos(:,:) = [];

set(handles.uitable1, 'Data', datos);
% Choose default command line output for Clases
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Clases wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Clases_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in datos.
function datos_Callback(hObject, eventdata, handles)
% hObject    handle to datos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
nombre = get(handles.ednombre, 'String');
apellido = get(handles.edapellido, 'String');
birthYear = str2num(get(handles.edbirthYear, 'String'));
Direccion = get(handles.edDireccion, 'String');
Telefono = str2num(get(handles.edTelefono, 'String'));
Celular = str2num(get(handles.edCelular, 'String'));
% Edad = 
datos = get(handles.uitable1, 'Data');

if isempty(datos)
    datos{1,1} = nombre;
    datos{1,2} = apellido;
    datos{1,3} = birthYear;
    datos{1,4} = Direccion;
    datos{1,5} = Telefono;
    datos{1,6} = Celular;
else
    datos{end+1,1} = nombre;
    datos{end,2} = apellido;
    datos{end,3} = birthYear;
    datos{end,4} = Direccion;
    datos{end,5} = Telefono;
    datos{end,6} = Celular;
end
set(handles.uitable1, 'Data', datos);
% --- Executes on button press in Notas.
function Notas_Callback(hObject, eventdata, handles)
% hObject    handle to Notas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in generarReporte.


function ednombre_Callback(hObject, eventdata, handles)
% hObject    handle to ednombre (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ednombre as text
%        str2double(get(hObject,'String')) returns contents of ednombre as a double


% --- Executes during object creation, after setting all properties.
function ednombre_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ednombre (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edapellido_Callback(hObject, eventdata, handles)
% hObject    handle to edapellido (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edapellido as text
%        str2double(get(hObject,'String')) returns contents of edapellido as a double


% --- Executes during object creation, after setting all properties.
function edapellido_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edapellido (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edbirthYear_Callback(hObject, eventdata, handles)
% hObject    handle to edbirthYear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edbirthYear as text
%        str2double(get(hObject,'String')) returns contents of edbirthYear as a double


% --- Executes during object creation, after setting all properties.
function edbirthYear_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edbirthYear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edDireccion_Callback(hObject, eventdata, handles)
% hObject    handle to edDireccion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edDireccion as text
%        str2double(get(hObject,'String')) returns contents of edDireccion as a double


% --- Executes during object creation, after setting all properties.
function edDireccion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edDireccion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edTelefono_Callback(hObject, eventdata, handles)
% hObject    handle to edTelefono (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edTelefono as text
%        str2double(get(hObject,'String')) returns contents of edTelefono as a double


% --- Executes during object creation, after setting all properties.
function edTelefono_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edTelefono (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edCelular_Callback(hObject, eventdata, handles)
% hObject    handle to edCelular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edCelular as text
%        str2double(get(hObject,'String')) returns contents of edCelular as a double


% --- Executes during object creation, after setting all properties.
function edCelular_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edCelular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function buscanombre_Callback(hObject, eventdata, handles)
% hObject    handle to buscanombre (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of buscanombre as text
%        str2double(get(hObject,'String')) returns contents of buscanombre as a double


% --- Executes during object creation, after setting all properties.
function buscanombre_CreateFcn(hObject, eventdata, handles)
% hObject    handle to buscanombre (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Buscapellido_Callback(hObject, eventdata, handles)
% hObject    handle to Buscapellido (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Buscapellido as text
%        str2double(get(hObject,'String')) returns contents of Buscapellido as a double


% --- Executes during object creation, after setting all properties.
function Buscapellido_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Buscapellido (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in buscarestud.
function buscarestud_Callback(hObject, eventdata, handles)
% hObject    handle to buscarestud (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% obtener los valores de nombre y apellido de la primera fila de la tabla
datos= get(handles.uitable1, 'Data');
nombre = (datos{1,1});
nombre_buscar = get(handles.buscanombre, 'String');
apellido = (datos{1,2});
apellido_buscar = get(handles.Buscapellido, 'String');
% buscar los valores de nombre y apellido en la tabla datos

if strcmp(nombre_buscar.nombre, nombre.nombre) && strcmp(apellido_buscar.apellido, apellidos.apellido)
    % Si coinciden, agregar los valores de nombre y apellido a una nueva tabla
    nuevaTabla = table(nombre.Nombre, apellido.Apellido)
end
% idx = ismember(datos(:,1:2),{nombre_buscar, apellido_buscar});
% filas = find(idx);
% crear una nueva tabla con las dos primeras columnas de la tabla datos
% nueva_tabla = datos(filas,1:2);


% --- Executes on button press in update.
function update_Callback(hObject, eventdata, handles)
% hObject    handle to update (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

 nombre_buscar = get(handles.buscanombre, 'String');
apellido_buscar = get(handles.Buscapellido, 'String');
id = str2num(get(handles.editid, 'String'));

% Direccion = get(handles.edDireccion, 'String');
% Telefono = str2num(get(handles.edTelefono, 'String'));
% Celular = str2num(get(handles.edCelular, 'String'));
% Edad = 
datosE = get(handles.uitable1, 'Data');
 
if isempty(datosE)
    datosE{1,1} = nombre_buscar;
    datosE{1,2} = apellido_buscar;
    datosE{1,3} = id;
%     datos{1,4} = Direccion;
%     datos{1,5} = Telefono;
%     datos{1,6} = Celular;
else
    datosE{end+1,1} = nombre_buscar;
    datosE{end,2} = apellido_buscar;
    datosE{end,3} = id;
%     datos{end,4} = Direccion;
%     datos{end,5} = Telefono;
%     datos{end,6} = Celular;
end
set(handles.uitable2, 'Data', datosE);

function editid_Callback(hObject, eventdata, handles)
% hObject    handle to editid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editid as text
%        str2double(get(hObject,'String')) returns contents of editid as a double


% --- Executes during object creation, after setting all properties.
function editid_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calcEdad.
function calcEdad_Callback(hObject, eventdata, handles)
% hObject    handle to calcEdad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% 
%      birthYear = str2double(get(handles.edbirthYear, 'String'));
%     empleado = Employee(); % Crear una instancia de la clase Employee
%     yearnow = empleado.CalcularEdad(birthYear);
%     handles.valorEdad = str2num(get(handles.edbirthYear, 'String'));
    caledad = get(handles.uitable1, 'Data');

    handles.valorEdad = (2023-birthYear);
    set(handles.yearnow, 'String', num2str(handles.valorEdad));
 


% --- Executes when entered data in editable cell(s) in uitable1.
function uitable1_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function datos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to datos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% datos = get(handles.uitable1_CellEditCallback, 'Data');
% datos(:,:) = [];
% set(handles, unitable1, 'Data', datos);
% 
% handles.output = hObject;
% 
% guidata(hObject, handles);



function nota1_Callback(hObject, eventdata, handles)
% hObject    handle to nota1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nota1 as text
%        str2double(get(hObject,'String')) returns contents of nota1 as a double


% --- Executes during object creation, after setting all properties.
function nota1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nota1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nota2_Callback(hObject, eventdata, handles)
% hObject    handle to nota2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nota2 as text
%        str2double(get(hObject,'String')) returns contents of nota2 as a double


% --- Executes during object creation, after setting all properties.
function nota2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nota2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nota3_Callback(hObject, eventdata, handles)
% hObject    handle to nota3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nota3 as text
%        str2double(get(hObject,'String')) returns contents of nota3 as a double


% --- Executes during object creation, after setting all properties.
function nota3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nota3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nota4_Callback(hObject, eventdata, handles)
% hObject    handle to nota4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nota4 as text
%        str2double(get(hObject,'String')) returns contents of nota4 as a double


% --- Executes during object creation, after setting all properties.
function nota4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nota4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nota5_Callback(hObject, eventdata, handles)
% hObject    handle to nota5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nota5 as text
%        str2double(get(hObject,'String')) returns contents of nota5 as a double


% --- Executes during object creation, after setting all properties.
function nota5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nota5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





function generarReporte_Callback(hObject, eventdata, handles)
% hObject    handle to generarReporte (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    anioActual = str2double(get(handles.anioActual, 'String'));
    semestre = str2double(get(handles.semestre, 'String'));
    programaAcademico = get(handles.programaAcademico, 'String');
    nombreDocente = get(handles.nombreDocente, 'String');
    nombreAsignatura = get(handles.nombreAsignatura, 'String');
    codigoAsignatura = get(handles.codigoAsignatura, 'String');


% Ingresar notas


    % Genera el reporte y guárdalo en el archivo "reporte.txt"
    fileID = fopen('reporte.txt', 'w');
    fprintf(fileID, 'Año: %d\nSemestre: %d\n', anioActual, semestre);
    fprintf(fileID, 'Programa Académico: %s\nDocente: %s\n', programaAcademico, nombreDocente);
    fprintf(fileID, 'Asignatura: %s\nCódigo: %s\n', nombreAsignatura, codigoAsignatura);
    
    % Escribe los datos de cada estudiante en el archivo (aquí puedes reemplazarlo con la información de los objetos de la clase Student)
    for i = 1:size(notas, 1)
        fprintf(fileID, '\nEstudiante %d:\n', i);
        fprintf(fileID, 'Notas: %.1f %.1f %.1f\n', notas(i, :));
        notaFinal = mean(notas(i, :));
        fprintf(fileID, 'Nota final: %.1f\n', notaFinal);
        estado = 'Aprobado';
        if notaFinal < 3.0
            estado = 'Reprobado';
        end
        fprintf(fileID, 'Estado: %s\n', estado);
    end


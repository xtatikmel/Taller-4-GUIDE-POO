% Create the Student class
classdef Estudiante < Employee
    properties
        nombre
        apellido
        id
        notas
        marks
    end
    
    methods
        function obj = Estudiante(nombre, apellido, id)
            % Constructor
            obj.nombre = nombre;
            obj.apellido = apellido;
            obj.id = id;
            obj.notas = [];
        end

         function obj = IngresarNotas(obj, notas)
            if all(notas >= 0 & notas <= 5)
                obj.Notas = notas;
            else
                error('Notas inválidas');
            end
         end

%         function obj = enterGrades(obj, grades)
%             % Enter the grades for the student
%             if ~isempty(find(grades < 0, 1))
%                 error("Invalid grade input");
%             end
%             obj.notas = [obj.notas, grades];
%         end
        
%         function finalGrade = calculateFinalGrade(obj)
%             % Calculate the final grade for the student
%             if length(obj.notas) < 3
%                 error("Not enough grades to calculate final grade");
%             end
%             finalGrade = mean(obj.notas);
%         end
%         
        function BuscarporNombre(obj, nombre)
            if strcmp(obj.Nombre, nombre)
                disp(obj);
            end
        end

        function BuscarporApellido(obj, apellido)
            if strcmp(obj.Apellido, apellido)
                disp(obj);
            end
        end
        
        function BuscarporID(obj, id)
            if obj.ID == id
                disp(obj);
            end
        end

        function obj = displayIdInformation(obj)
            % Display information about student based on
        end

        function BuscarporApellido(obj, apellido)
            if strcmp(obj.Apellido, apellido)
                disp(obj);
            end
        end
        
        function BuscarporID(obj, id)
            if obj.ID == id
                disp(obj);
            end
        end
    end
end
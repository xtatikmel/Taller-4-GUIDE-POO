classdef Employee
    properties
        empleado
        nombre
        apellido
        birthYear
        Direccion
        Telefono
        Celular
    end
    
    methods
        function obj = Employee(empleado,nombre, apellido, birthYear, Direccion, Telefono, Celular)
            % Constructor
            obj.empleado = empleado;
            obj.nombre = nombre;
            obj.apellido = apellido;
            obj.birthYear = birthYear;
            obj.Direccion = Direccion;
            obj.Telefono = Telefono;
            obj.Celular = Celular;
        end
        
        function edad = calculateAge(obj, currentYear)
            % Calculates the age of the employee
            edad = currentYear - obj.birthYear;
            if edad < 0
                error("Invalid birth year");
            end
        end
        
        function obj = updateAddress(obj, newAddress)
            % Updates the address of the employee
            obj.Direccion = newAddress;
        end
        
        function obj = updatePhoneNumber(obj, newPhoneNumber)
            % Updates the phone number of the employee
            obj.Telefono = newPhoneNumber;
        end
        
        function obj = updateCellNumber(obj, newCellNumber)
            % Updates the cell number of the employee
            obj.Celular = newCellNumber;
        end
    end
end

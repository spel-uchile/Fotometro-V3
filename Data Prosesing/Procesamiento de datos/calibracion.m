clc
clear
main
clc
clear
format long g

run('sps.m');

if isfolder('Aeronet') ~= 1
    disp('No folder Aeronet');
end

if isfolder('Stgonet') ~= 1
    disp('No folder Stgonet');
end

if isfolder('Stgo') ~= 1
    disp('No folder Stgo');
    mkdir('Stgo');
    disp('Folder Stgo created');
end

if isfolder('Aero') ~= 1
    disp('No folder Aero');
    mkdir('Aero');
    disp('Folder Aero created');
end

%Construccion de la estructura bruta para los datos de aeronet
folder = 'Aero';
sub_folder = ls(folder);    
sub_folder = sub_folder(3:length(sub_folder(:,1)),:);
for i=1:1:length(sub_folder(:,1))
    direction = strcat(folder,'/',sub_folder(i,:));
    place = direction(14:15);
    dig = direction(11:12);

    if place == 'C.'
        direction;
        find(contains(points, place)==1);
        load(direction);
        
        %Construccion de la estructura bruta para cada fotometro
        folder_s = 'Stgo';    
        sub_folder_s = ls(folder_s);    
        sub_folder_s = sub_folder_s(3:length(sub_folder_s(:,1)),:);
        for j=1:1:length(sub_folder_s(:,1))
            direction_s = strcat(folder_s,'/',sub_folder_s(j,:));
            unidad = direction_s(6:7);
            if unidad == dig
                index_sps = find(points == place);
                lt = lat(index_sps);
                ln = lon(index_sps);
                load(direction_s)
                % Opt v l
                %constants(aero, stgo, lt, ln, dig)
                % Opt v d
                %constants2(aero, stgo, lt, ln, dig)
                % Opt v l d
                %constants3(aero, stgo, lt, ln, dig)
                
                %constants_beta(aero, stgo, lt, ln, dig)
                %constants2_beta(aero, stgo, lt, ln, dig)
                constants3_beta(aero, stgo, lt, ln, dig)
            end
        end
    end
end


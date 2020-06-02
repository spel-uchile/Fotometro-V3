clc
clear
format long g

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

%Construccion de la estructura bruta para cada fotometro
folder = 'Stgonet';
sub_folder = ls(folder);    
sub_folder = sub_folder(3:length(sub_folder(:,1)),:);
for i=1:1:length(sub_folder(:,1))
    direction = strcat(folder,'/',sub_folder(i,:));
    files = ls(direction);
    files = files(3:length(files(:,1)),:);
    out = stgo_mat(direction, files, sub_folder(i,:));
end

%Construccion de la estructura bruta para los datos de aeronet
folder = 'Aeronet';
sub_folder = ls(folder);    
sub_folder = sub_folder(3:length(sub_folder(:,1)),:);
for i=1:1:length(sub_folder(:,1))
    direction = strcat(folder,'/',sub_folder(i,:));
    places = ls(direction);
    places = places(3:length(places(:,1)),:);
    
    for j=1:1:length(places(:,1))
        direction = strcat(folder,'/',sub_folder(i,:),'/',places(j,:));
        files = ls(direction);
        files = files(3:length(files(:,1)),:);
        out = aeronet_mat(direction, files, sub_folder(i,:),places(j,:));
    end
    
end
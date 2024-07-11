
% Funcio de codi porpi que detecta varis features en un frame donat i els retorna en un vector

function [feature_vector] = calculate_features(x, y, videoFrame)
    
    feature_vector = [];   % vector que contindra a cada columna, un component dels features i cada fila un punt seleccionat
  
    numero_punts = length(x);

    punts_voltant = 8;  % numero de punts adjacents a mirar
    
  
    hsvFrame = rgb2hsv(videoFrame);
    % extreure components H i S
    H = hsvFrame(:,:,1);
    S = hsvFrame(:,:,2);
    

    escala_grisos = rgb2gray(videoFrame);
   
    % Iterar pels punts seleccionats
     for i = 1:numero_punts
        center_y = y(i);
        center_x = x(i);
        
        % Feature 1: HSV extreure la component H i S del punt seleccionat
        H_center = H(center_y, center_x);
        S_center = S(center_y, center_x);

        % Feature 2: HOG, en una regio petita al voltant punt
       
        window_size = [16 16];  % ajustar el valor
        ROI = imcrop(escala_grisos, [center_x-window_size(1)/2, center_y-window_size(2)/2, ...
                                  window_size(1)-1, window_size(2)-1]);
        HOG_feature = extractHOGFeatures(ROI);

        % Iterar pels veins adjacents
        offsets = [-1 0; 1 0; 0 -1; 0 1; -2 0; 2 0; 0 -2; 0 2]; % Top bottom left right,  Top2 bottom2 left2 right 2
        
        
        neighbor_features = zeros([1 punts_voltant*2]);        

        for j = 1:punts_voltant
            neighbor_y = center_y + offsets(j, 1);
            neighbor_x = center_x + offsets(j, 2);
            
            % Calcular H i S dels adjacents
            H_neighbor = H(neighbor_y, neighbor_x);
            S_neighbor = S(neighbor_y, neighbor_x);
            
            neighbor_features(2*j - 1) = H_neighbor;
            neighbor_features(2*j) = S_neighbor;
        end 
        
       
        % afegir totes les features al vector
        feature_vector = [feature_vector; H_center, S_center, neighbor_features(:,:), HOG_feature];

    end
  
end
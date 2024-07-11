
% Funcio que donada una finestra de cerca, la imatge de la cara, les coordenades dels punts del frame anterior 
% i el vector de features. Retorna les coordenades x,y dels punts amb match mes elevat.

function [x_max, y_max] = calculate_match(finestra_busqueda, face, x, y, feature_vector)
    
    % Nombre de punts a considerar
    numero_punts = length(x);
    
    % Coordenades dels punt del pixel amb similitud maxima als features
    x_max = zeros(1, numero_punts);
    y_max = zeros(1, numero_punts);
    
    % Inicialitzar el valor minim de la distància amb un valor gran
    min_distance = inf;
    
    % Dimensions de la imatge
    [height, width] = size(face);

    % la metrica que utilitzar per comparar els colors del feature 1 es la distancia Euclideana

    % recorrer elements en una finestra al voltant de les coordenades del punt seleccionat i quedar-se amb el maxim
    
    for p = 1:numero_punts
        % Inicialitzar el valor minim de la distancia amb un valor gran
        min_distance = inf;

        % Coordenades inicials del punt
        x_inicial = x(p);
        y_inicial = y(p);
        
        % Vector de feature original per aquest punt
        feature_original = feature_vector(p, :);
        
        % Recorrer elements en una finestra al voltant de les coordenades del punt seleccionat i quedar-se amb el maxim
        for i = -finestra_busqueda:finestra_busqueda
            for j = -finestra_busqueda:finestra_busqueda
                
                % Coordenades del pixel actual
                x_actual = x_inicial + i;
                y_actual = y_inicial + j;
                
                % Comprovar si les coordenades son dins dels limits de la imatge
                if x_actual > 0 && x_actual <= width && y_actual > 0 && y_actual <= height
                    % Obtenir el vector de features del pixel actual
                    current_feature = calculate_features(x_actual, y_actual, face);
                    
                    % Calcular la distancia euclidiana entre el vector de features actual i el vector de features original
                    distance = norm(current_feature - feature_original);
                    
                    % Si la distancia es menor que la minima distancia trobada fins ara, actualitzar les coordenades i la mínima distància
                    if distance < min_distance
                        min_distance = distance;
                        x_max(p) = x_actual;
                        y_max(p) = y_actual;
                    end
                end
            end
        end
    end


end
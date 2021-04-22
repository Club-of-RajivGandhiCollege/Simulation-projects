function spath= trails(path)
for j=1:10  
 for i=1:20
     if path(i)==4
         if path(i-1)==1
           
            if path(i+1)==1 %______141
             path(i-1)=3;
             path(i)=0;
             path(i+1)=0;
             [~, S] = sort(path == 0, 2);
            Index  = sub2ind(size(path), repmat((1:1).', 1, 20), S);
            path= path(Index);
           elseif path(i+1)==2 %____142
             path(i-1)=4;
             path(i)=0;
             path(i+1)=0;
             [~, S] = sort(path == 0, 2);
             Index  = sub2ind(size(path), repmat((1:1).', 1, 20), S);
             path= path(Index);
           else
             path(i-1)=2;
             path(i)=0;
             path(i+1)=0;
             [~, S] = sort(path == 0, 2);
             Index  = sub2ind(size(path), repmat((1:1).', 1, 20), S);
             path= path(Index);
            end  
          
         elseif path(i-1)==2
            if path(i+1)==1
             path(i-1)=4;
             path(i)=0;
             path(i+1)=0;
               [~, S] = sort(path == 0, 2);
            Index  = sub2ind(size(path), repmat((1:1).', 1, 20), S);
            path= path(Index);
           elseif path(i+1)==2 
             path(i-1)=3;
             path(i)=0;
             path(i+1)=0;
               [~, S] = sort(path == 0, 2);
            Index  = sub2ind(size(path), repmat((1:1).', 1, 20), S);
            path= path(Index);
           else
             path(i-1)=1;
             path(i)=0;
             path(i+1)=0;
               [~, S] = sort(path == 0, 2);
            Index  = sub2ind(size(path), repmat((1:1).', 1, 20), S);
            path= path(Index);
            end
          
         else
            if path(i-1)==3 
             if path(i+1)==1
             path(i-1)=2;
             path(i)=0;
             path(i+1)=0;
               [~, S] = sort(path == 0, 2);
            Index  = sub2ind(size(path), repmat((1:1).', 1, 20), S);
            path= path(Index);
            elseif path(i+1)==2
              path(i-1)=1;
              path(i)=0;
              path(i+1)=0;
                [~, S] = sort(path == 0, 2);
            Index  = sub2ind(size(path), repmat((1:1).', 1, 20), S);
            path= path(Index);
            else
                path(i-1)=4;
                path(i)=0;
                path(i+1)=0;
                  [~, S] = sort(path == 0, 2);
            Index  = sub2ind(size(path), repmat((1:1).', 1, 20), S);
            path= path(Index);
            end 
            end 
         end  
        end    
        % break;
     end    
 end


spath=path;
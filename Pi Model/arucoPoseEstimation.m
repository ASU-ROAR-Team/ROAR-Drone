function [x,y,z] = arucoPoseEstimation(image)

% after calibrating the camera add: cam = cameraintrinsicParam
[ids, locs, poses]=readArucoMarker(im,"DICT_ARUCO_ORIGINAL",cam,15);
for i=1:length(id)
    if ids(i)==101
        x=poses(i).Translation(1);
        y=poses(i).Translation(2);
        z=poses(i).Translation(3);
    end
end


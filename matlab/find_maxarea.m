function [ bw ] = find_maxarea( BW )
%FIND_MAXAREA �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    im = bwlabel(BW);
    stats = regionprops(im,'Area');
    [b,index]=sort([stats.Area],'descend');
    bw = ismember(im,index(1));

end


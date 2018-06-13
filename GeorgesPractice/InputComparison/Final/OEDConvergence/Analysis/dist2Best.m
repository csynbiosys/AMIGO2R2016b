function dist = dist2Best(best,design)
%return the Euclidean distance from the best,
%return a colum if there are multipule designs

best=repmat(best,size(design,1),1);

dist=sqrt(sum((design-best).^2,2));

end
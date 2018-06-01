function dist = dist2Best(design)

best=[2.02873941,0.07900836,1.30758504];
best=repmat(best,size(design,1),1);

dist=sqrt(sum((design-best).^2,2));

end
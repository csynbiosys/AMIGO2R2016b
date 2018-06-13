function dist = dist2Best(design)

best=[1.834245069,0.034283032,1.098036954];
best=repmat(best,size(design,1),1);

dist=sqrt(sum((design-best).^2,2));

end
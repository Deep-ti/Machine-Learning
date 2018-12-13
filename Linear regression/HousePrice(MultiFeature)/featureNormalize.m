function [X_norm] = featureNormalize(X)
  X_norm = X;
  for n = 1:length(X(1,:)),
    for m = 1:length(X(:,1)),
      X_norm(m,n) = (X(m,n) - mean(X(:,n)))/std(X(:,n));
    end
  end
end
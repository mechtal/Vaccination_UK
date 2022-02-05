def train_model(train_X, val_X, train_y, val_y, model_type, n_estimators=None):
    if model_type == "DecisionTree":
        model = DecisionTreeRegressor(random_state=1)
    elif model_type == "RandomForest":
        model = RandomForestRegressor(random_state=1, n_estimators=n_estimators)
    model.fit(train_X, train_y)
    predictions = model.predict(val_X)
    mae = mean_absolute_error(predictions, val_y)
    return mae, predictions, model
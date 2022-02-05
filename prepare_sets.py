def prepare_sets(dataset, feature_columns, y_column):
    train_X, val_X, train_y, val_y = train_test_split(dataset[feature_columns], dataset[y_column], random_state=1)
    return train_X, val_X, train_y, val_y
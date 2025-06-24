import matplotlib.pyplot as plt


def plot_history(history):
    fig, [ax1, ax2] = plt.subplots(1, 2, figsize=(10, 5))   
    loss = history.history["loss"]
    val_loss = history.history["val_loss"]
    accuracy = history.history["accuracy"]
    val_accuracy = history.history["val_accuracy"]
    print(history.history.keys())
    epoch = range(len(loss))    

    ax1.plot(epoch, loss, label="Training Loss")
    ax1.plot(epoch, val_loss, label="Validation Loss")
    ax1.set_xlabel("Epoch")
    ax1.set_ylabel("Loss")
    ax1.legend()    
    
    ax2.plot(epoch, accuracy, label="Training Accuracy")
    ax2.plot(epoch, val_accuracy, label="Validation Accuracy")
    ax2.set_xlabel("Epoch")
    ax2.set_ylabel("Loss")
    ax2.legend()
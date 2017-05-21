.class Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$4;
.super Ljava/lang/Object;
.source "CheckBluetoothStateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->showEnableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$4;->this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    iput-object p2, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$4;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$4;->this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    # getter for: Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->access$200(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$4;->this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    iget-object v1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$4;->this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    # getter for: Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->access$200(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$4;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 173
    iget-object v0, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$4;->this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    .line 174
    return-void
.end method

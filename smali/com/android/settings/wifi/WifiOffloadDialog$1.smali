.class Lcom/android/settings/wifi/WifiOffloadDialog$1;
.super Ljava/lang/Object;
.source "WifiOffloadDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiOffloadDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiOffloadDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiOffloadDialog;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/settings/wifi/WifiOffloadDialog$1;->this$0:Lcom/android/settings/wifi/WifiOffloadDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog$1;->this$0:Lcom/android/settings/wifi/WifiOffloadDialog;

    # invokes: Lcom/android/settings/wifi/WifiOffloadDialog;->disableHomePopup()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiOffloadDialog;->access$000(Lcom/android/settings/wifi/WifiOffloadDialog;)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog$1;->this$0:Lcom/android/settings/wifi/WifiOffloadDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiOffloadDialog;->finish()V

    .line 118
    return-void
.end method

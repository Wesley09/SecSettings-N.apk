.class Lcom/android/settings/accounts/SyncSettings$1;
.super Ljava/lang/Object;
.source "SyncSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/SyncSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/SyncSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/SyncSettings;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/settings/accounts/SyncSettings$1;->this$0:Lcom/android/settings/accounts/SyncSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/accounts/SyncSettings$1;->this$0:Lcom/android/settings/accounts/SyncSettings;

    # invokes: Lcom/android/settings/accounts/SyncSettings;->startAddAccountSettings()V
    invoke-static {v0}, Lcom/android/settings/accounts/SyncSettings;->access$000(Lcom/android/settings/accounts/SyncSettings;)V

    .line 122
    return-void
.end method

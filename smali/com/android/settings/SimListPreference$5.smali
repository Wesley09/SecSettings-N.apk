.class Lcom/android/settings/SimListPreference$5;
.super Ljava/lang/Object;
.source "SimListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SimListPreference;->disconnectNetworkAlramPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SimListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/SimListPreference;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/settings/SimListPreference$5;->this$0:Lcom/android/settings/SimListPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/settings/SimListPreference$5;->this$0:Lcom/android/settings/SimListPreference;

    # getter for: Lcom/android/settings/SimListPreference;->mWhich:I
    invoke-static {v0}, Lcom/android/settings/SimListPreference;->access$500(Lcom/android/settings/SimListPreference;)I

    move-result v0

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/settings/SimListPreference$5;->this$0:Lcom/android/settings/SimListPreference;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/SimListPreference;->mWhich:I
    invoke-static {v0, v1}, Lcom/android/settings/SimListPreference;->access$502(Lcom/android/settings/SimListPreference;I)I

    .line 403
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SimListPreference$5;->this$0:Lcom/android/settings/SimListPreference;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/SimListPreference;->mWhich:I
    invoke-static {v0, v1}, Lcom/android/settings/SimListPreference;->access$502(Lcom/android/settings/SimListPreference;I)I

    goto :goto_0
.end method

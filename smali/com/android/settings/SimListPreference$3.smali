.class Lcom/android/settings/SimListPreference$3;
.super Ljava/lang/Object;
.source "SimListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SimListPreference;->showChangeToNetworkModeAlramPopup(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SimListPreference;

.field final synthetic val$simSlot:I


# direct methods
.method constructor <init>(Lcom/android/settings/SimListPreference;I)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/settings/SimListPreference$3;->this$0:Lcom/android/settings/SimListPreference;

    iput p2, p0, Lcom/android/settings/SimListPreference$3;->val$simSlot:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/settings/SimListPreference$3;->this$0:Lcom/android/settings/SimListPreference;

    iget v1, p0, Lcom/android/settings/SimListPreference$3;->val$simSlot:I

    # invokes: Lcom/android/settings/SimListPreference;->showSuccessToast(I)V
    invoke-static {v0, v1}, Lcom/android/settings/SimListPreference;->access$300(Lcom/android/settings/SimListPreference;I)V

    .line 167
    return-void
.end method

.class Lcom/android/settings/NetworkManagement$3;
.super Ljava/lang/Object;
.source "NetworkManagement.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NetworkManagement;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NetworkManagement;

.field final synthetic val$doNotShowSound:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/NetworkManagement;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/settings/NetworkManagement$3;->this$0:Lcom/android/settings/NetworkManagement;

    iput-object p2, p0, Lcom/android/settings/NetworkManagement$3;->val$doNotShowSound:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/settings/NetworkManagement$3;->val$doNotShowSound:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 527
    return-void
.end method

.class Lcom/android/settings/ModePreviewTablet$1;
.super Ljava/lang/Object;
.source "ModePreviewTablet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ModePreviewTablet;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ModePreviewTablet;


# direct methods
.method constructor <init>(Lcom/android/settings/ModePreviewTablet;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/settings/ModePreviewTablet$1;->this$0:Lcom/android/settings/ModePreviewTablet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 139
    iget-object v0, p0, Lcom/android/settings/ModePreviewTablet$1;->this$0:Lcom/android/settings/ModePreviewTablet;

    # getter for: Lcom/android/settings/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;
    invoke-static {v0}, Lcom/android/settings/ModePreviewTablet;->access$000(Lcom/android/settings/ModePreviewTablet;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/settings/ModePreviewTablet$1;->this$0:Lcom/android/settings/ModePreviewTablet;

    # getter for: Lcom/android/settings/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;
    invoke-static {v0}, Lcom/android/settings/ModePreviewTablet;->access$000(Lcom/android/settings/ModePreviewTablet;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/ModePreviewTablet$1;->this$0:Lcom/android/settings/ModePreviewTablet;

    # invokes: Lcom/android/settings/ModePreviewTablet;->setEnabledItems(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/ModePreviewTablet;->access$100(Lcom/android/settings/ModePreviewTablet;Z)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/ModePreviewTablet$1;->this$0:Lcom/android/settings/ModePreviewTablet;

    # getter for: Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/settings/ModePreviewTablet;->access$200(Lcom/android/settings/ModePreviewTablet;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 151
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ModePreviewTablet$1;->this$0:Lcom/android/settings/ModePreviewTablet;

    # getter for: Lcom/android/settings/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;
    invoke-static {v0}, Lcom/android/settings/ModePreviewTablet;->access$000(Lcom/android/settings/ModePreviewTablet;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/ModePreviewTablet$1;->this$0:Lcom/android/settings/ModePreviewTablet;

    # invokes: Lcom/android/settings/ModePreviewTablet;->setEnabledItems(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/ModePreviewTablet;->access$100(Lcom/android/settings/ModePreviewTablet;Z)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/ModePreviewTablet$1;->this$0:Lcom/android/settings/ModePreviewTablet;

    # getter for: Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/settings/ModePreviewTablet;->access$200(Lcom/android/settings/ModePreviewTablet;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    goto :goto_0
.end method

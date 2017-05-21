.class public Lcom/android/settings/widget/list/CheckableRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "CheckableRelativeLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private final ATTR:Ljava/lang/String;

.field private final NS:Ljava/lang/String;

.field private checkable:Landroid/widget/Checkable;

.field private final checkableId:I

.field private enable:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const-string v0, "http://schemas.android.com/apk/res/com.android.settings"

    iput-object v0, p0, Lcom/android/settings/widget/list/CheckableRelativeLayout;->NS:Ljava/lang/String;

    .line 14
    const-string v0, "checkable"

    iput-object v0, p0, Lcom/android/settings/widget/list/CheckableRelativeLayout;->ATTR:Ljava/lang/String;

    .line 25
    const-string v0, "http://schemas.android.com/apk/res/com.android.settings"

    const-string v1, "checkable"

    const/4 v2, 0x0

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/list/CheckableRelativeLayout;->checkableId:I

    .line 26
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/android/settings/widget/list/CheckableRelativeLayout;->checkableId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/list/CheckableRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lcom/android/settings/widget/list/CheckableRelativeLayout;->checkable:Landroid/widget/Checkable;

    .line 31
    iget v0, p0, Lcom/android/settings/widget/list/CheckableRelativeLayout;->checkableId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/list/CheckableRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/list/CheckableRelativeLayout;->enable:Landroid/view/View;

    .line 33
    iget-object v0, p0, Lcom/android/settings/widget/list/CheckableRelativeLayout;->checkable:Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/list/CheckableRelativeLayout;->enable:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/list/CheckableRelativeLayout;->checkable:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 42
    iget v0, p0, Lcom/android/settings/widget/list/CheckableRelativeLayout;->checkableId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/list/CheckableRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lcom/android/settings/widget/list/CheckableRelativeLayout;->checkable:Landroid/widget/Checkable;

    .line 43
    iget v0, p0, Lcom/android/settings/widget/list/CheckableRelativeLayout;->checkableId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/list/CheckableRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/list/CheckableRelativeLayout;->enable:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/android/settings/widget/list/CheckableRelativeLayout;->checkable:Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/settings/widget/list/CheckableRelativeLayout;->enable:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/android/settings/widget/list/CheckableRelativeLayout;->checkable:Landroid/widget/Checkable;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/list/CheckableRelativeLayout;->checkable:Landroid/widget/Checkable;

    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0
.end method

.method public setEnable(Z)V
    .locals 2
    .param p1, "set"    # Z

    .prologue
    .line 67
    iget v0, p0, Lcom/android/settings/widget/list/CheckableRelativeLayout;->checkableId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/list/CheckableRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lcom/android/settings/widget/list/CheckableRelativeLayout;->checkable:Landroid/widget/Checkable;

    .line 68
    iget v0, p0, Lcom/android/settings/widget/list/CheckableRelativeLayout;->checkableId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/list/CheckableRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/list/CheckableRelativeLayout;->enable:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/android/settings/widget/list/CheckableRelativeLayout;->checkable:Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 71
    if-nez p1, :cond_1

    .line 72
    iget-object v0, p0, Lcom/android/settings/widget/list/CheckableRelativeLayout;->enable:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/list/CheckableRelativeLayout;->enable:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/android/settings/widget/list/CheckableRelativeLayout;->checkableId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/list/CheckableRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lcom/android/settings/widget/list/CheckableRelativeLayout;->checkable:Landroid/widget/Checkable;

    .line 57
    iget v0, p0, Lcom/android/settings/widget/list/CheckableRelativeLayout;->checkableId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/list/CheckableRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/list/CheckableRelativeLayout;->enable:Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/android/settings/widget/list/CheckableRelativeLayout;->checkable:Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/list/CheckableRelativeLayout;->enable:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/list/CheckableRelativeLayout;->checkable:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->toggle()V

    goto :goto_0
.end method

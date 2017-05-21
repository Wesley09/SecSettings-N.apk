.class public Lcom/android/settings/myprofile/RadioButtonPreference;
.super Landroid/preference/CheckBoxPreference;
.source "RadioButtonPreference.java"


# instance fields
.field private position:I

.field private res:Landroid/content/res/Resources;

.field private value:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # I
    .param p3, "position"    # I

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/myprofile/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput p2, p0, Lcom/android/settings/myprofile/RadioButtonPreference;->value:I

    .line 29
    iput p3, p0, Lcom/android/settings/myprofile/RadioButtonPreference;->position:I

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myprofile/RadioButtonPreference;->res:Landroid/content/res/Resources;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/myprofile/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const v0, 0x7f0400f3

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/RadioButtonPreference;->setLayoutResource(I)V

    .line 20
    return-void
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/android/settings/myprofile/RadioButtonPreference;->position:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/android/settings/myprofile/RadioButtonPreference;->value:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/myprofile/RadioButtonPreference;->isChecked()Z

    move-result v0

    .line 41
    .local v0, "checked":Z
    const v3, 0x7f0b0309

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 42
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/widget/Checkable;

    if-eqz v3, :cond_0

    .line 43
    check-cast v2, Landroid/widget/Checkable;

    .end local v2    # "v":Landroid/view/View;
    invoke-interface {v2, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 45
    :cond_0
    const v3, 0x1020014

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 46
    .local v1, "textView":Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/myprofile/RadioButtonPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :cond_1
    return-void
.end method

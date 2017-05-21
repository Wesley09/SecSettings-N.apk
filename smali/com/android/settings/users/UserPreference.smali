.class public Lcom/android/settings/users/UserPreference;
.super Landroid/preference/Preference;
.source "UserPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeleteClickListener:Landroid/view/View$OnClickListener;

.field private mSerialNumber:I

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    const/16 v3, -0xa

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZLandroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZLandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "userId"    # I
    .param p4, "showDelete"    # Z
    .param p5, "deleteListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    .line 41
    const/16 v0, -0xa

    iput v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/users/UserPreference;->mContext:Landroid/content/Context;

    .line 51
    iput-object p1, p0, Lcom/android/settings/users/UserPreference;->mContext:Landroid/content/Context;

    .line 52
    if-eqz p4, :cond_0

    .line 53
    const v0, 0x7f040118

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserPreference;->setWidgetLayoutResource(I)V

    .line 54
    iput-object p5, p0, Lcom/android/settings/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    .line 56
    :cond_0
    iput p3, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    .line 57
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 3
    .param p1, "another"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 95
    instance-of v1, p1, Lcom/android/settings/users/UserPreference;

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/users/UserPreference;->getSerialNumber()I

    move-result v1

    check-cast p1, Lcom/android/settings/users/UserPreference;

    .end local p1    # "another":Landroid/preference/Preference;
    invoke-virtual {p1}, Lcom/android/settings/users/UserPreference;->getSerialNumber()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 96
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    check-cast p1, Landroid/preference/Preference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getSerialNumber()I
    .locals 2

    .prologue
    .line 80
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    if-gez v0, :cond_1

    .line 82
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    const/16 v1, -0xa

    if-ne v0, v1, :cond_0

    const v0, 0x7fffffff

    .line 87
    :goto_0
    return v0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/users/UserPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    .line 85
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    if-gez v0, :cond_1

    iget v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    goto :goto_0

    .line 87
    :cond_1
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    goto :goto_0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 61
    const v5, 0x7f0b0370

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "deleteView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 63
    iget-object v5, p0, Lcom/android/settings/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    :cond_0
    const v5, 0x1020006

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 69
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/android/settings/users/UserPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 70
    .local v3, "resources":Landroid/content/res/Resources;
    const v5, 0x7f0f0034

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 71
    .local v4, "viewSize":I
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 72
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 76
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 77
    return-void
.end method

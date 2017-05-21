.class public Lcom/android/settings/ModePreviewTablet;
.super Lcom/android/internal/app/AlertActivity;
.source "ModePreviewTablet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static mModePreviewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutomatic:Landroid/widget/CheckedTextView;

.field mCurrentSelection:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private mModePreviewAdapter:Lcom/android/settings/ModePreviewAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ModePreviewTablet;->mModePreviewAdapter:Lcom/android/settings/ModePreviewAdapter;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/ModePreviewTablet;->mCurrentSelection:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ModePreviewTablet;)Landroid/widget/CheckedTextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ModePreviewTablet;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/ModePreviewTablet;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ModePreviewTablet;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/ModePreviewTablet;->setEnabledItems(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/ModePreviewTablet;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ModePreviewTablet;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private setEnabledItems(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/settings/ModePreviewTablet;->mModePreviewAdapter:Lcom/android/settings/ModePreviewAdapter;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/ModePreviewAdapter;->setIsAutomatic(Z)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/ModePreviewTablet;->mModePreviewAdapter:Lcom/android/settings/ModePreviewAdapter;

    invoke-virtual {v0}, Lcom/android/settings/ModePreviewAdapter;->notifyDataSetChanged()V

    .line 170
    return-void

    .line 168
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCurrentSelection()I
    .locals 3

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_setting"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v0, 0x1

    .line 216
    packed-switch p2, :pswitch_data_0

    .line 234
    :goto_0
    return-void

    .line 218
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_automatic_setting"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 223
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->finish()V

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_setting"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    goto :goto_1

    .line 228
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_automatic_setting"

    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;

    invoke-virtual {v3}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_2
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_setting"

    iget-object v2, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->finish()V

    goto :goto_0

    .line 228
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 216
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 79
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    sget-object v3, Lcom/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 88
    sget-object v3, Lcom/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090a7f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v3, Lcom/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090a80

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v3, Lcom/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090a81

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mModePreviewAdapter:Lcom/android/settings/ModePreviewAdapter;

    if-nez v3, :cond_0

    .line 94
    new-instance v3, Lcom/android/settings/ModePreviewAdapter;

    sget-object v4, Lcom/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v6, v6, v4}, Lcom/android/settings/ModePreviewAdapter;-><init>(Landroid/content/Context;IILjava/util/ArrayList;)V

    iput-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mModePreviewAdapter:Lcom/android/settings/ModePreviewAdapter;

    .line 97
    :cond_0
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/settings/ModePreviewTablet;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mInflater:Landroid/view/LayoutInflater;

    .line 99
    iget-object v0, p0, Lcom/android/settings/ModePreviewTablet;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 101
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a7d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 102
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400d1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 103
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 104
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 105
    const v3, 0x7f090143

    invoke-virtual {p0, v3}, Lcom/android/settings/ModePreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 106
    const v3, 0x7f090a16

    invoke-virtual {p0, v3}, Lcom/android/settings/ModePreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 108
    iget-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v4, 0x7f0b010f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    .line 109
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 113
    iget-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v4, 0x7f0b0272

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    iput-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;

    .line 114
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;

    const v4, 0x1030042

    invoke-virtual {v3, p0, v4}, Landroid/widget/CheckedTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 115
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;

    invoke-virtual {v3, v6}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 116
    iget-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v4, 0x7f0b0153

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 117
    .local v2, "mDivider":Landroid/view/View;
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 120
    if-eqz p1, :cond_1

    .line 121
    const-string v3, "auto_state"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 126
    .local v1, "isChecked":I
    :goto_0
    if-ne v1, v7, :cond_2

    .line 127
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;

    invoke-virtual {v3, v7}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 128
    invoke-direct {p0, v6}, Lcom/android/settings/ModePreviewTablet;->setEnabledItems(Z)V

    .line 135
    :goto_1
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;

    new-instance v4, Lcom/android/settings/ModePreviewTablet$1;

    invoke-direct {v4, p0}, Lcom/android/settings/ModePreviewTablet$1;-><init>(Lcom/android/settings/ModePreviewTablet;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/settings/ModePreviewTablet;->mModePreviewAdapter:Lcom/android/settings/ModePreviewAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->setupAlert()V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getCurrentSelection()I

    move-result v3

    iput v3, p0, Lcom/android/settings/ModePreviewTablet;->mCurrentSelection:I

    .line 159
    iget v3, p0, Lcom/android/settings/ModePreviewTablet;->mCurrentSelection:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 160
    const-string v3, "ModePreview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate() positoin : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/ModePreviewTablet;->mCurrentSelection:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    iget v4, p0, Lcom/android/settings/ModePreviewTablet;->mCurrentSelection:I

    invoke-virtual {v3, v4, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 162
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    iget v4, p0, Lcom/android/settings/ModePreviewTablet;->mCurrentSelection:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 165
    :goto_2
    return-void

    .line 123
    .end local v1    # "isChecked":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_mode_automatic_setting"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .restart local v1    # "isChecked":I
    goto :goto_0

    .line 131
    :cond_2
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;

    invoke-virtual {v3, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 132
    invoke-direct {p0, v7}, Lcom/android/settings/ModePreviewTablet;->setEnabledItems(Z)V

    goto :goto_1

    .line 164
    :cond_3
    const-string v3, "ModePreview"

    const-string v4, "onCreate() positoin : -1"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_setting"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 207
    .local v0, "currentValue":I
    iget-object v1, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 208
    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 211
    .end local v0    # "currentValue":I
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 212
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {p3}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 196
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 238
    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_automatic_setting"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 240
    iget-object v0, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 245
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 242
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_setting"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 181
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 182
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 175
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 176
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 189
    const-string v1, "auto_state"

    iget-object v0, p0, Lcom/android/settings/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 191
    return-void

    .line 189
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

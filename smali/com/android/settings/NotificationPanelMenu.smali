.class public Lcom/android/settings/NotificationPanelMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NotificationPanelMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;
    }
.end annotation


# instance fields
.field private idxGap:I

.field private mActiveAppsMinNum:I

.field private mActiveAppsNum:I

.field private mActiveNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveNotificationPanelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailBtnLayoutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailableBtnArea:Landroid/widget/LinearLayout;

.field private mBrightness:Landroid/preference/CheckBoxPreference;

.field private mBrightnessAdjustmentObserver:Landroid/database/ContentObserver;

.field private mCandidateNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCandidateNotificationPanelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mConvertPanelItemstring:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentFooterView:Landroid/view/View;

.field private mCurrentOrientation:I

.field private mFromQuickPanel:Z

.field mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mLongClickedView:Landroid/view/View;

.field private mNotificationPanelArea:Landroid/widget/LinearLayout;

.field private mNotificationPanelLayoutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field mPanelBarDragListener:Landroid/view/View$OnDragListener;

.field private mSalesCode:Ljava/lang/String;

.field private mShadowBuilder:Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;

.field mfakePanelDragListener:Landroid/view/View$OnDragListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelLayoutList:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailBtnLayoutList:Ljava/util/ArrayList;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentFooterView:Landroid/view/View;

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentOrientation:I

    .line 87
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsMinNum:I

    .line 88
    iput v1, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsNum:I

    .line 89
    iput v1, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationPanelList:Ljava/util/ArrayList;

    .line 99
    iput-boolean v1, p0, Lcom/android/settings/NotificationPanelMenu;->mFromQuickPanel:Z

    .line 101
    new-instance v0, Lcom/android/settings/NotificationPanelMenu$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/NotificationPanelMenu$1;-><init>(Lcom/android/settings/NotificationPanelMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightnessAdjustmentObserver:Landroid/database/ContentObserver;

    .line 108
    new-instance v0, Lcom/android/settings/NotificationPanelMenu$2;

    invoke-direct {v0, p0}, Lcom/android/settings/NotificationPanelMenu$2;-><init>(Lcom/android/settings/NotificationPanelMenu;)V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 118
    new-instance v0, Lcom/android/settings/NotificationPanelMenu$3;

    invoke-direct {v0, p0}, Lcom/android/settings/NotificationPanelMenu$3;-><init>(Lcom/android/settings/NotificationPanelMenu;)V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mfakePanelDragListener:Landroid/view/View$OnDragListener;

    .line 174
    new-instance v0, Lcom/android/settings/NotificationPanelMenu$4;

    invoke-direct {v0, p0}, Lcom/android/settings/NotificationPanelMenu$4;-><init>(Lcom/android/settings/NotificationPanelMenu;)V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mPanelBarDragListener:Landroid/view/View$OnDragListener;

    .line 680
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/NotificationPanelMenu;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NotificationPanelMenu;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightness:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/NotificationPanelMenu;)Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NotificationPanelMenu;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mShadowBuilder:Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/NotificationPanelMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NotificationPanelMenu;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/settings/NotificationPanelMenu;->mFromQuickPanel:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/NotificationPanelMenu;Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;)Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/NotificationPanelMenu;
    .param p1, "x1"    # Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/settings/NotificationPanelMenu;->mShadowBuilder:Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/NotificationPanelMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/NotificationPanelMenu;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->resetPanel()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/NotificationPanelMenu;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NotificationPanelMenu;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mLongClickedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/NotificationPanelMenu;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/NotificationPanelMenu;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/settings/NotificationPanelMenu;->mLongClickedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/NotificationPanelMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NotificationPanelMenu;

    .prologue
    .line 38
    iget v0, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/NotificationPanelMenu;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NotificationPanelMenu;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/NotificationPanelMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NotificationPanelMenu;

    .prologue
    .line 38
    iget v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsNum:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/NotificationPanelMenu;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NotificationPanelMenu;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationPanelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/NotificationPanelMenu;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/NotificationPanelMenu;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/NotificationPanelMenu;->changeQuickSettingsByPanel(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/NotificationPanelMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/NotificationPanelMenu;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->updateQuickSettingsList()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/NotificationPanelMenu;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/NotificationPanelMenu;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/NotificationPanelMenu;->changeQuickSettingsByBar(Landroid/view/View;)V

    return-void
.end method

.method private changeQuickSettingsByBar(Landroid/view/View;)V
    .locals 13
    .param p1, "dropView"    # Landroid/view/View;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 510
    iget-object v8, p0, Lcom/android/settings/NotificationPanelMenu;->mLongClickedView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 511
    .local v3, "longClickedIdx":I
    iget v8, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    if-ge v3, v8, :cond_0

    iget-object v2, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    .line 512
    .local v2, "fromList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    iget v8, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    if-lt v3, v8, :cond_1

    .line 513
    iget v8, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    sub-int/2addr v3, v8

    .line 514
    const/4 v1, 0x1

    .line 520
    .local v1, "fromArea":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 521
    .local v0, "dropIdx":I
    iget v8, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    if-ge v0, v8, :cond_2

    iget-object v7, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    .line 522
    .local v7, "toList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    iget v8, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    if-lt v0, v8, :cond_3

    .line 523
    iget v8, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    sub-int/2addr v0, v8

    .line 524
    const/4 v6, 0x1

    .line 529
    .local v6, "toArea":I
    :goto_3
    const-string v8, "NotificationPanelMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "changeQuickSettingsByBar() - longClickedIdx: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / dropIdx : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    if-nez v1, :cond_4

    if-ne v6, v12, :cond_4

    iget v8, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsMinNum:I

    iget v9, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsNum:I

    if-lt v8, v9, :cond_4

    .line 532
    const v8, 0x7f091117

    new-array v9, v12, [Ljava/lang/Object;

    iget v10, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsMinNum:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/NotificationPanelMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 533
    .local v4, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v4, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 545
    .end local v4    # "message":Ljava/lang/String;
    :goto_4
    return-void

    .line 511
    .end local v0    # "dropIdx":I
    .end local v1    # "fromArea":I
    .end local v2    # "fromList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "toArea":I
    .end local v7    # "toList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    goto :goto_0

    .line 516
    .restart local v2    # "fromList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "fromArea":I
    goto :goto_1

    .line 521
    .restart local v0    # "dropIdx":I
    :cond_2
    iget-object v7, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    goto :goto_2

    .line 526
    .restart local v7    # "toList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "toArea":I
    goto :goto_3

    .line 537
    :cond_4
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 538
    .local v5, "removedItem":Ljava/lang/String;
    if-ge v3, v0, :cond_5

    .line 539
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v7, v8, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 544
    :goto_5
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->saveAppslist()V

    goto :goto_4

    .line 541
    :cond_5
    invoke-virtual {v7, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_5
.end method

.method private changeQuickSettingsByPanel(Landroid/view/View;)V
    .locals 13
    .param p1, "dropView"    # Landroid/view/View;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 550
    iget-object v8, p0, Lcom/android/settings/NotificationPanelMenu;->mLongClickedView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 551
    .local v3, "longClickedIdx":I
    iget v8, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    if-ge v3, v8, :cond_0

    iget-object v2, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    .line 552
    .local v2, "fromList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    iget v8, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    if-lt v3, v8, :cond_1

    .line 553
    iget v8, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    sub-int/2addr v3, v8

    .line 554
    const/4 v1, 0x1

    .line 560
    .local v1, "fromArea":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 561
    .local v0, "dropIdx":I
    iget v8, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    if-ge v0, v8, :cond_2

    iget-object v7, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    .line 562
    .local v7, "toList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    iget v8, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    if-lt v0, v8, :cond_3

    .line 563
    iget v8, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    sub-int/2addr v0, v8

    .line 564
    const/4 v6, 0x1

    .line 569
    .local v6, "toArea":I
    :goto_3
    const-string v8, "NotificationPanelMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "changeQuickSettingsByPanel() - longClickedIdx: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / dropIdx : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-direct {p0, v7, v0}, Lcom/android/settings/NotificationPanelMenu;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 572
    if-nez v1, :cond_4

    if-ne v6, v12, :cond_4

    iget v8, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsMinNum:I

    iget v9, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsNum:I

    if-lt v8, v9, :cond_4

    .line 573
    const v8, 0x7f091117

    new-array v9, v12, [Ljava/lang/Object;

    iget v10, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsMinNum:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/NotificationPanelMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 574
    .local v4, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v4, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 584
    .end local v4    # "message":Ljava/lang/String;
    :goto_4
    return-void

    .line 551
    .end local v0    # "dropIdx":I
    .end local v1    # "fromArea":I
    .end local v2    # "fromList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "toArea":I
    .end local v7    # "toList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    goto :goto_0

    .line 556
    .restart local v2    # "fromList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "fromArea":I
    goto :goto_1

    .line 561
    .restart local v0    # "dropIdx":I
    :cond_2
    iget-object v7, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    goto :goto_2

    .line 566
    .restart local v7    # "toList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "toArea":I
    goto :goto_3

    .line 577
    :cond_4
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 578
    .local v5, "removedItem":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    .end local v5    # "removedItem":Ljava/lang/String;
    :goto_5
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->saveAppslist()V

    goto :goto_4

    .line 581
    :cond_5
    invoke-direct {p0, v2, v3, v7, v0}, Lcom/android/settings/NotificationPanelMenu;->swapPanels(Ljava/util/ArrayList;ILjava/util/ArrayList;I)V

    goto :goto_5
.end method

.method private displayQuickSettings(IIILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 24
    .param p1, "mode"    # I
    .param p2, "oneLinePanelNum"    # I
    .param p3, "totalPanelLines"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p4, "panelLayoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    .local p5, "panelViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p6, "panelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v21, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/NotificationPanelMenu;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 357
    .local v9, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/NotificationPanelMenu;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 359
    .local v13, "packageName":Ljava/lang/String;
    mul-int v20, p2, p3

    .line 360
    .local v20, "totalPanelNum":I
    if-nez p1, :cond_0

    const/4 v6, 0x0

    .line 362
    .local v6, "gap":I
    :goto_0
    const/4 v7, 0x0

    .line 363
    .local v7, "idx":I
    const/4 v7, 0x0

    :goto_1
    move/from16 v0, v20

    if-ge v7, v0, :cond_4

    .line 364
    const v21, 0x7f040124

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 365
    .local v19, "panelView":Landroid/view/View;
    const v21, 0x7f0b0387

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 366
    .local v14, "panel":Landroid/widget/LinearLayout;
    const v21, 0x7f0b02a1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 367
    .local v16, "panelImageView":Landroid/widget/ImageView;
    const v21, 0x7f0b02a3

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 369
    .local v18, "panelTextView":Landroid/widget/TextView;
    const v21, 0x7f040125

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 370
    .local v12, "overlayedPanelView":Landroid/view/View;
    const v21, 0x7f0b0389

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 371
    .local v15, "panelBar":Landroid/widget/ImageView;
    const v21, 0x7f0b038a

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 374
    .local v5, "fakePanel":Landroid/view/View;
    add-int v21, v7, v6

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 375
    add-int v21, v7, v6

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 376
    add-int v21, v7, v6

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 377
    const-string v21, "NotificationPanelMenu"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "idx: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string v21, "NotificationPanelMenu"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "gap: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const-string v21, "NotificationPanelMenu"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "tag: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int v23, v7, v6

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v7}, Lcom/android/settings/NotificationPanelMenu;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 382
    const v21, 0x7f02038f

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 403
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NotificationPanelMenu;->mfakePanelDragListener:Landroid/view/View$OnDragListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 406
    div-int v4, v7, p2

    .line 407
    .local v4, "containerIdx":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 408
    .local v3, "container":Landroid/widget/FrameLayout;
    const v21, 0x7f0b0384

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 409
    .local v11, "notificationPanelLayout":Landroid/widget/LinearLayout;
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 410
    const v21, 0x7f0b0385

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 411
    .local v10, "notificationPanelBarLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 413
    move-object/from16 v0, p5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 360
    .end local v3    # "container":Landroid/widget/FrameLayout;
    .end local v4    # "containerIdx":I
    .end local v5    # "fakePanel":Landroid/view/View;
    .end local v6    # "gap":I
    .end local v7    # "idx":I
    .end local v10    # "notificationPanelBarLayout":Landroid/widget/LinearLayout;
    .end local v11    # "notificationPanelLayout":Landroid/widget/LinearLayout;
    .end local v12    # "overlayedPanelView":Landroid/view/View;
    .end local v14    # "panel":Landroid/widget/LinearLayout;
    .end local v15    # "panelBar":Landroid/widget/ImageView;
    .end local v16    # "panelImageView":Landroid/widget/ImageView;
    .end local v18    # "panelTextView":Landroid/widget/TextView;
    .end local v19    # "panelView":Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    goto/16 :goto_0

    .line 384
    .restart local v5    # "fakePanel":Landroid/view/View;
    .restart local v6    # "gap":I
    .restart local v7    # "idx":I
    .restart local v12    # "overlayedPanelView":Landroid/view/View;
    .restart local v14    # "panel":Landroid/widget/LinearLayout;
    .restart local v15    # "panelBar":Landroid/widget/ImageView;
    .restart local v16    # "panelImageView":Landroid/widget/ImageView;
    .restart local v18    # "panelTextView":Landroid/widget/TextView;
    .restart local v19    # "panelView":Landroid/view/View;
    :cond_1
    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 388
    .local v17, "panelText":Ljava/lang/String;
    move-object/from16 v8, v17

    .line 389
    .local v8, "imgResourceName":Ljava/lang/String;
    const-string v21, "notification_panel_nfc"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 390
    const-string v21, "ATT"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NotificationPanelMenu;->mSalesCode:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 391
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "_att"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 397
    :cond_2
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/NotificationPanelMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const-string v22, "drawable"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v8, v1, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 398
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/NotificationPanelMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const-string v22, "string"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NotificationPanelMenu;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NotificationPanelMenu;->mPanelBarDragListener:Landroid/view/View$OnDragListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    goto/16 :goto_2

    .line 392
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 393
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "_kor"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 415
    .end local v5    # "fakePanel":Landroid/view/View;
    .end local v8    # "imgResourceName":Ljava/lang/String;
    .end local v12    # "overlayedPanelView":Landroid/view/View;
    .end local v14    # "panel":Landroid/widget/LinearLayout;
    .end local v15    # "panelBar":Landroid/widget/ImageView;
    .end local v16    # "panelImageView":Landroid/widget/ImageView;
    .end local v17    # "panelText":Ljava/lang/String;
    .end local v18    # "panelTextView":Landroid/widget/TextView;
    .end local v19    # "panelView":Landroid/view/View;
    :cond_4
    return-void
.end method

.method private isEmptyPanel(Ljava/util/ArrayList;I)Z
    .locals 2
    .param p2, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 587
    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 588
    .local v0, "value":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p2, :cond_0

    .line 589
    const/4 v0, 0x1

    .line 591
    :cond_0
    return v0
.end method

.method private loadAppslist()V
    .locals 7

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_panel_active_app_list"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, "active_app_list":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_panel_active_number_of_apps"

    const/16 v6, 0xa

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsNum:I

    .line 475
    const-string v4, "NotificationPanelMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAppslist() - active_app_list : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string v4, "NotificationPanelMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAppslist() - mActiveAppsNum : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    if-nez v1, :cond_0

    .line 505
    :goto_0
    return-void

    .line 482
    :cond_0
    iget-object v4, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 483
    iget-object v4, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 486
    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "activeApps":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v4, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsNum:I

    if-ge v3, v4, :cond_2

    .line 488
    iget-object v4, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 489
    .local v2, "convertPanelString":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 490
    iget-object v4, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 494
    .end local v2    # "convertPanelString":Ljava/lang/String;
    :cond_2
    const-string v4, "NotificationPanelMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAppslist() - mActiveNotificationList.size():  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget v3, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsNum:I

    :goto_2
    array-length v4, v0

    if-ge v3, v4, :cond_4

    .line 497
    iget-object v4, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 498
    .restart local v2    # "convertPanelString":Ljava/lang/String;
    const-string v4, "NotificationPanelMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertPanelString:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    if-eqz v2, :cond_3

    .line 500
    iget-object v4, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 504
    .end local v2    # "convertPanelString":Ljava/lang/String;
    :cond_4
    const-string v4, "NotificationPanelMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAppslist() - mCandidateNotificationList.size():  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private makeConvertPanelName()V
    .locals 3

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Wifi"

    const-string v2, "notification_panel_wifi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Location"

    const-string v2, "notification_panel_gps"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SilentMode"

    const-string v2, "notification_panel_sound"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "AutoRotate"

    const-string v2, "notification_panel_screen_rotation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Bluetooth"

    const-string v2, "notification_panel_bluetooth"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "MobileData"

    const-string v2, "notification_panel_mobile_data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Apn"

    const-string v2, "notification_panel_apn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "DormantMode"

    const-string v2, "notification_panel_blocking_mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "PowerSaving"

    const-string v2, "notification_panel_powersaving"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "AllShareCast"

    const-string v2, "notification_panel_mobile_allshare_cast"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "MultiWindow"

    const-string v2, "notification_panel_multiwindows"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "WiFiHotspot"

    const-string v2, "notification_panel_wifihotspot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SBeam"

    const-string v2, "notification_panel_sbeam"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Nfc"

    const-string v2, "notification_panel_nfc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "DrivingMode"

    const-string v2, "notification_panel_driving"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SmartStay"

    const-string v2, "notification_panel_smartstay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Sync"

    const-string v2, "notification_panel_sync"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "AirplaneMode"

    const-string v2, "notification_airplane_mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Ebook"

    const-string v2, "notification_panel_e_reading"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "PenOnly"

    const-string v2, "notification_panel_pen_mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "AirView"

    const-string v2, "notification_panel_air_view"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SmartScroll"

    const-string v2, "notification_panel_smartscroll"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SmartPause"

    const-string v2, "notification_panel_smartpause"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "AirGesture"

    const-string v2, "notification_panel_air_gesture"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_wifi"

    const-string v2, "Wifi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_gps"

    const-string v2, "Location"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_sound"

    const-string v2, "SilentMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_screen_rotation"

    const-string v2, "AutoRotate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_bluetooth"

    const-string v2, "Bluetooth"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_mobile_data"

    const-string v2, "MobileData"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_apn"

    const-string v2, "Apn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_blocking_mode"

    const-string v2, "DormantMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_powersaving"

    const-string v2, "PowerSaving"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_mobile_allshare_cast"

    const-string v2, "AllShareCast"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_multiwindows"

    const-string v2, "MultiWindow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_wifihotspot"

    const-string v2, "WiFiHotspot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_sbeam"

    const-string v2, "SBeam"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_nfc"

    const-string v2, "Nfc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_driving"

    const-string v2, "DrivingMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_smartstay"

    const-string v2, "SmartStay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_sync"

    const-string v2, "Sync"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_airplane_mode"

    const-string v2, "AirplaneMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_e_reading"

    const-string v2, "Ebook"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_pen_mode"

    const-string v2, "PenOnly"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_air_view"

    const-string v2, "AirView"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_smartscroll"

    const-string v2, "SmartScroll"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_smartpause"

    const-string v2, "SmartPause"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_air_gesture"

    const-string v2, "AirGesture"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    return-void
.end method

.method private refreshUI()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 627
    iget-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentFooterView:Landroid/view/View;

    if-eqz v6, :cond_0

    .line 628
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getListView()Landroid/widget/ListView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentFooterView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    move-result v1

    .line 629
    .local v1, "isRemoved":Z
    const-string v6, "NotificationPanelMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshUI() - isRemoved: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    .end local v1    # "isRemoved":Z
    :cond_0
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/android/settings/NotificationPanelMenu;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 633
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f040126

    invoke-virtual {v0, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 634
    .local v2, "quickSettingsView":Landroid/view/View;
    const v6, 0x7f0b038f

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelArea:Landroid/widget/LinearLayout;

    .line 635
    const v6, 0x7f0b0391

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailableBtnArea:Landroid/widget/LinearLayout;

    .line 636
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->updateQuickSettingsList()V

    .line 639
    const v6, 0x1020016

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 640
    .local v5, "tvTitle":Landroid/widget/TextView;
    const v6, 0x7f0910fd

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 643
    const v6, 0x1020010

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 644
    .local v4, "tvSummary":Landroid/widget/TextView;
    const v6, 0x7f0910fe

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 651
    const v6, 0x7f0b038e

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 652
    .local v3, "resetBtn":Landroid/widget/Button;
    new-instance v6, Lcom/android/settings/NotificationPanelMenu$6;

    invoke-direct {v6, p0}, Lcom/android/settings/NotificationPanelMenu$6;-><init>(Lcom/android/settings/NotificationPanelMenu;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getListView()Landroid/widget/ListView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v9, v7}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 677
    iput-object v2, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentFooterView:Landroid/view/View;

    .line 678
    return-void
.end method

.method private resetPanel()V
    .locals 5

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 227
    .local v2, "cr":Landroid/content/ContentResolver;
    const-string v3, "notification_panel_active_app_list_for_reset"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "activeApps":Ljava/lang/String;
    const-string v3, "notification_panel_active_number_of_apps_for_reset"

    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 230
    .local v1, "activeAppsNum":I
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_panel_active_app_list"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 231
    const-string v3, "notification_panel_active_number_of_apps"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 233
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->loadAppslist()V

    .line 234
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->updateQuickSettingsList()V

    .line 235
    return-void
.end method

.method private saveAppslist()V
    .locals 7

    .prologue
    .line 601
    const-string v0, ""

    .line 605
    .local v0, "activeApps":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 606
    iget-object v4, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 607
    .local v2, "convertPanelString":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 608
    .local v1, "activeContent":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 605
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 610
    .end local v1    # "activeContent":Ljava/lang/String;
    .end local v2    # "convertPanelString":Ljava/lang/String;
    :cond_0
    const-string v4, "NotificationPanelMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAppslist() -  activeApps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 613
    iget-object v4, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 614
    .restart local v2    # "convertPanelString":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 615
    .restart local v1    # "activeContent":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 612
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 617
    .end local v1    # "activeContent":Ljava/lang/String;
    .end local v2    # "convertPanelString":Ljava/lang/String;
    :cond_1
    const-string v4, "NotificationPanelMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAppslist() -  activeApps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_panel_active_number_of_apps"

    iget-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 620
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_panel_active_app_list"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 622
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_panel_active_number_of_apps"

    const/16 v6, 0xa

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsNum:I

    .line 623
    return-void
.end method

.method private swapPanels(Ljava/util/ArrayList;ILjava/util/ArrayList;I)V
    .locals 2
    .param p2, "longClickedIdx"    # I
    .param p4, "dropIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 595
    .local p1, "longClickedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "dropList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 596
    .local v0, "temp":Ljava/lang/String;
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 597
    invoke-virtual {p3, p4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 598
    return-void
.end method

.method private updateQuickSettingsList()V
    .locals 15

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 303
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 304
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 306
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailableBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 307
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailBtnLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 308
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationPanelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 311
    iget v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 312
    const/4 v2, 0x5

    .line 316
    .local v2, "oneLinePanelNum":I
    :goto_0
    const-string v0, "NotificationPanelMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateQuickSettingsList() - oneLinePanelNum: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/2addr v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int v3, v0, v2

    .line 320
    .local v3, "notiPanelLines":I
    :goto_1
    const-string v0, "NotificationPanelMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateQuickSettingsList() - notiPanelLines: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    mul-int v0, v2, v3

    iput v0, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    .line 325
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/NotificationPanelMenu;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 326
    .local v13, "inflater":Landroid/view/LayoutInflater;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v3, :cond_2

    .line 327
    const v0, 0x7f040123

    const/4 v1, 0x0

    invoke-virtual {v13, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    .line 328
    .local v11, "container":Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 326
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 314
    .end local v2    # "oneLinePanelNum":I
    .end local v3    # "notiPanelLines":I
    .end local v11    # "container":Landroid/widget/FrameLayout;
    .end local v12    # "i":I
    .end local v13    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    const/16 v2, 0xa

    .restart local v2    # "oneLinePanelNum":I
    goto :goto_0

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/2addr v0, v2

    add-int/lit8 v3, v0, 0x1

    goto :goto_1

    .line 333
    .restart local v3    # "notiPanelLines":I
    .restart local v12    # "i":I
    .restart local v13    # "inflater":Landroid/view/LayoutInflater;
    :cond_2
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelLayoutList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/NotificationPanelMenu;->displayQuickSettings(IIILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 336
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/2addr v0, v2

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int v7, v0, v2

    .line 338
    .local v7, "availBtnlLines":I
    :goto_3
    const-string v0, "NotificationPanelMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateQuickSettingsList() - availBtnlLines: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    if-nez v7, :cond_3

    .line 341
    const/4 v7, 0x1

    .line 343
    :cond_3
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_4
    if-ge v14, v7, :cond_5

    .line 344
    const v0, 0x7f040123

    const/4 v1, 0x0

    invoke-virtual {v13, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    .line 345
    .restart local v11    # "container":Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailBtnLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailableBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 343
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 336
    .end local v7    # "availBtnlLines":I
    .end local v11    # "container":Landroid/widget/FrameLayout;
    .end local v14    # "j":I
    :cond_4
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/2addr v0, v2

    add-int/lit8 v7, v0, 0x1

    goto :goto_3

    .line 349
    .restart local v7    # "availBtnlLines":I
    .restart local v14    # "j":I
    :cond_5
    const/4 v5, 0x1

    iget-object v8, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailBtnLayoutList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationPanelList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    move-object v4, p0

    move v6, v2

    invoke-direct/range {v4 .. v10}, Lcom/android/settings/NotificationPanelMenu;->displayQuickSettings(IIILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 351
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentOrientation:I

    .line 241
    const-string v0, "NotificationPanelMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated() - mCurrentOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v0, "NotificationPanelMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated() - mFromQuickPanel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/NotificationPanelMenu;->mFromQuickPanel:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/NotificationPanelMenu$5;

    invoke-direct {v1, p0}, Lcom/android/settings/NotificationPanelMenu$5;-><init>(Lcom/android/settings/NotificationPanelMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 263
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->refreshUI()V

    .line 264
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 265
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 291
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 293
    const-string v0, "NotificationPanelMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged() - newConfig.orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / mCurrentOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 295
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentOrientation:I

    .line 296
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->refreshUI()V

    .line 298
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 208
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 209
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/NotificationPanelMenu;->mSalesCode:Ljava/lang/String;

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 213
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "direct_quickpanel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/NotificationPanelMenu;->mFromQuickPanel:Z

    .line 215
    const v1, 0x7f070061

    invoke-virtual {p0, v1}, Lcom/android/settings/NotificationPanelMenu;->addPreferencesFromResource(I)V

    .line 216
    const-string v1, "brightness_adjustment"

    invoke-virtual {p0, v1}, Lcom/android/settings/NotificationPanelMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightness:Landroid/preference/CheckBoxPreference;

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsMinNum:I

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_panel_active_number_of_apps"

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsNum:I

    .line 221
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->makeConvertPanelName()V

    .line 222
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->loadAppslist()V

    .line 223
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 276
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightnessAdjustmentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 278
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 282
    iget-object v1, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 284
    .local v0, "value":Z
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_panel_brightness_adjustment"

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 286
    .end local v0    # "value":Z
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 284
    .restart local v0    # "value":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 269
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 270
    iget-object v2, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_panel_brightness_adjustment"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "notification_panel_brightness_adjustment"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightnessAdjustmentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 272
    return-void

    :cond_0
    move v0, v1

    .line 270
    goto :goto_0
.end method

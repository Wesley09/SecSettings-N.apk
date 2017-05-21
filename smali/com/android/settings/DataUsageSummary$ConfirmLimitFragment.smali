.class public Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLimitFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2105
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/DataUsageSummary;)V
    .locals 14
    .param p0, "parent"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 2110
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v10

    if-nez v10, :cond_0

    .line 2158
    :goto_0
    return-void

    .line 2112
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 2114
    .local v9, "res":Landroid/content/res/Resources;
    # getter for: Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->access$3300(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/NetworkPolicyEditor;

    move-result-object v10

    # getter for: Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->access$3200(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v10

    iget-wide v10, v10, Landroid/net/NetworkPolicy;->warningBytes:J

    long-to-float v10, v10

    const v11, 0x3f99999a    # 1.2f

    mul-float/2addr v10, v11

    float-to-long v7, v10

    .line 2119
    .local v7, "minLimitBytes":J
    const/4 v2, 0x5

    .line 2120
    .local v2, "defaultLimitGB":I
    # getter for: Lcom/android/settings/DataUsageSummary;->isSPR:Z
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$3400()Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v2, 0x50

    .line 2124
    :cond_1
    # getter for: Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$600()Ljava/lang/String;

    move-result-object v1

    .line 2125
    .local v1, "currentTab":Ljava/lang/String;
    const-string v10, "3g"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2126
    # getter for: Lcom/android/settings/DataUsageSummary;->isVZW:Z
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$3500()Z

    move-result v10

    if-nez v10, :cond_2

    # getter for: Lcom/android/settings/DataUsageSummary;->isSPR:Z
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$3400()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2127
    :cond_2
    const v10, 0x7f0910a9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2131
    .local v6, "message":Ljava/lang/CharSequence;
    :goto_1
    int-to-long v10, v2

    const-wide/32 v12, 0x40000000

    mul-long/2addr v10, v12

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 2150
    .local v4, "limitBytes":J
    :goto_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2151
    .local v0, "args":Landroid/os/Bundle;
    const-string v10, "message"

    invoke-virtual {v0, v10, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2152
    const-string v10, "limitBytes"

    invoke-virtual {v0, v10, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2154
    new-instance v3, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

    invoke-direct {v3}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;-><init>()V

    .line 2155
    .local v3, "dialog":Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;
    invoke-virtual {v3, v0}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2156
    const/4 v10, 0x0

    invoke-virtual {v3, p0, v10}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2157
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    const-string v11, "confirmLimit"

    invoke-virtual {v3, v10, v11}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 2129
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v3    # "dialog":Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;
    .end local v4    # "limitBytes":J
    .end local v6    # "message":Ljava/lang/CharSequence;
    :cond_3
    const v10, 0x7f090957

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "message":Ljava/lang/CharSequence;
    goto :goto_1

    .line 2132
    .end local v6    # "message":Ljava/lang/CharSequence;
    :cond_4
    const-string v10, "4g"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2133
    # getter for: Lcom/android/settings/DataUsageSummary;->isVZW:Z
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$3500()Z

    move-result v10

    if-nez v10, :cond_5

    # getter for: Lcom/android/settings/DataUsageSummary;->isSPR:Z
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$3400()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2134
    :cond_5
    const v10, 0x7f0910a9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2138
    .restart local v6    # "message":Ljava/lang/CharSequence;
    :goto_3
    int-to-long v10, v2

    const-wide/32 v12, 0x40000000

    mul-long/2addr v10, v12

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .restart local v4    # "limitBytes":J
    goto :goto_2

    .line 2136
    .end local v4    # "limitBytes":J
    .end local v6    # "message":Ljava/lang/CharSequence;
    :cond_6
    const v10, 0x7f090957

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "message":Ljava/lang/CharSequence;
    goto :goto_3

    .line 2139
    .end local v6    # "message":Ljava/lang/CharSequence;
    :cond_7
    # getter for: Lcom/android/settings/DataUsageSummary;->TAB_MOBILE:[Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$700()[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 2140
    # getter for: Lcom/android/settings/DataUsageSummary;->isVZW:Z
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$3500()Z

    move-result v10

    if-nez v10, :cond_8

    # getter for: Lcom/android/settings/DataUsageSummary;->isSPR:Z
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$3400()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 2141
    :cond_8
    const v10, 0x7f0910a9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2145
    .restart local v6    # "message":Ljava/lang/CharSequence;
    :goto_4
    int-to-long v10, v2

    const-wide/32 v12, 0x40000000

    mul-long/2addr v10, v12

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .restart local v4    # "limitBytes":J
    goto :goto_2

    .line 2143
    .end local v4    # "limitBytes":J
    .end local v6    # "message":Ljava/lang/CharSequence;
    :cond_9
    const v10, 0x7f090957

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "message":Ljava/lang/CharSequence;
    goto :goto_4

    .line 2147
    .end local v6    # "message":Ljava/lang/CharSequence;
    :cond_a
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unknown current tab: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2171
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2173
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "message"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2174
    .local v4, "message":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "limitBytes"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2176
    .local v2, "limitBytes":J
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2178
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    # getter for: Lcom/android/settings/DataUsageSummary;->isVZW:Z
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$3500()Z

    move-result v5

    if-nez v5, :cond_0

    # getter for: Lcom/android/settings/DataUsageSummary;->isSPR:Z
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$3400()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2179
    :cond_0
    const v5, 0x7f0910a8

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2184
    :goto_0
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2186
    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment$1;

    invoke-direct {v6, p0, v2, v3}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment$1;-><init>(Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;J)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2196
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 2181
    :cond_1
    const v5, 0x7f090955

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.class public Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;
.super Landroid/app/Activity;
.source "GestureAnywhereCreateGestureActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity$GesturesProcessor;
    }
.end annotation


# instance fields
.field private mDoneButton:Landroid/view/View;

.field private mGesture:Landroid/gesture/Gesture;

.field private mIsExistingGesture:Z

.field private mName:Ljava/lang/String;

.field private mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 141
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;)Landroid/gesture/Gesture;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->mGesture:Landroid/gesture/Gesture;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;Landroid/gesture/Gesture;)Landroid/gesture/Gesture;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;
    .param p1, "x1"    # Landroid/gesture/Gesture;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->mGesture:Landroid/gesture/Gesture;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->mDoneButton:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public addGesture(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v2, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->mGesture:Landroid/gesture/Gesture;

    if-eqz v2, :cond_3

    .line 114
    iget-object v2, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->mName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->mUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-static {}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->getStore()Landroid/gesture/GestureLibrary;

    move-result-object v1

    .line 119
    .local v1, "store":Landroid/gesture/GestureLibrary;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->mUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "gestureName":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->mIsExistingGesture:Z

    if-eqz v2, :cond_2

    .line 121
    invoke-virtual {v1, v0}, Landroid/gesture/GestureLibrary;->removeEntry(Ljava/lang/String;)V

    .line 123
    :cond_2
    iget-object v2, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->mGesture:Landroid/gesture/Gesture;

    invoke-virtual {v1, v0, v2}, Landroid/gesture/GestureLibrary;->addGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V

    .line 124
    invoke-virtual {v1}, Landroid/gesture/GestureLibrary;->save()Z

    .line 126
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->setResult(I)V

    .line 131
    .end local v0    # "gestureName":Ljava/lang/String;
    .end local v1    # "store":Landroid/gesture/GestureLibrary;
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->finish()V

    goto :goto_0

    .line 128
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->setResult(I)V

    goto :goto_1
.end method

.method public cancelGesture(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->setResult(I)V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->finish()V

    .line 139
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 71
    iget-object v1, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->mGesture:Landroid/gesture/Gesture;

    if-eqz v1, :cond_0

    .line 72
    const v1, 0x7f090298

    invoke-virtual {p0, v1}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/gesture/GestureOverlayView;

    .line 74
    .local v0, "overlay":Landroid/gesture/GestureOverlayView;
    new-instance v1, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity$1;-><init>(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;Landroid/gesture/GestureOverlayView;)V

    invoke-virtual {v0, v1}, Landroid/gesture/GestureOverlayView;->post(Ljava/lang/Runnable;)Z

    .line 82
    .end local v0    # "overlay":Landroid/gesture/GestureOverlayView;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v6, 0x7f0400c6

    invoke-virtual {p0, v6}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->setContentView(I)V

    .line 46
    const v6, 0x7f09016e

    invoke-virtual {p0, v6}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->mDoneButton:Landroid/view/View;

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 49
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "uri"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->mUri:Ljava/lang/String;

    .line 50
    const-string v6, "name"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->mName:Ljava/lang/String;

    .line 52
    const v6, 0x7f090297

    invoke-virtual {p0, v6}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const v6, 0x7f090298

    invoke-virtual {p0, v6}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/gesture/GestureOverlayView;

    .line 55
    .local v4, "overlay":Landroid/gesture/GestureOverlayView;
    new-instance v6, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity$GesturesProcessor;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity$GesturesProcessor;-><init>(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity$1;)V

    invoke-virtual {v4, v6}, Landroid/gesture/GestureOverlayView;->addOnGestureListener(Landroid/gesture/GestureOverlayView$OnGestureListener;)V

    .line 57
    invoke-static {}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->getStore()Landroid/gesture/GestureLibrary;

    move-result-object v5

    .line 58
    .local v5, "store":Landroid/gesture/GestureLibrary;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x7c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->mUri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "gestureName":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/gesture/GestureLibrary;->getGestureEntries()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    .local v0, "entry":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 61
    invoke-virtual {v5, v0}, Landroid/gesture/GestureLibrary;->getGestures(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/gesture/Gesture;

    iput-object v6, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->mGesture:Landroid/gesture/Gesture;

    .line 62
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->mIsExistingGesture:Z

    .line 66
    .end local v0    # "entry":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 97
    const-string v1, "gesture"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/gesture/Gesture;

    iput-object v1, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->mGesture:Landroid/gesture/Gesture;

    .line 98
    iget-object v1, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->mGesture:Landroid/gesture/Gesture;

    if-eqz v1, :cond_0

    .line 99
    const v1, 0x7f090298

    invoke-virtual {p0, v1}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/gesture/GestureOverlayView;

    .line 101
    .local v0, "overlay":Landroid/gesture/GestureOverlayView;
    new-instance v1, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity$2;-><init>(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;Landroid/gesture/GestureOverlayView;)V

    invoke-virtual {v0, v1}, Landroid/gesture/GestureOverlayView;->post(Ljava/lang/Runnable;)Z

    .line 107
    iget-object v1, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->mDoneButton:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 109
    .end local v0    # "overlay":Landroid/gesture/GestureOverlayView;
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 88
    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->mGesture:Landroid/gesture/Gesture;

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "gesture"

    iget-object v1, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;->mGesture:Landroid/gesture/Gesture;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 91
    :cond_0
    return-void
.end method

.class public Lcom/android/settings/handwritingsearch/SearchableSymbols;
.super Landroid/app/Fragment;
.source "SearchableSymbols.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/handwritingsearch/SearchableSymbols;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 50
    iget-object v0, p0, Lcom/android/settings/handwritingsearch/SearchableSymbols;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/settings/handwritingsearch/SearchableSymbols;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 53
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/android/settings/handwritingsearch/SearchableSymbols;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/handwritingsearch/SearchableSymbols;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f040158

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 29
    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 43
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 37
    return-void
.end method

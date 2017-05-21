.class public Lcom/android/settings/search/SearchMain;
.super Landroid/preference/PreferenceActivity;
.source "SearchMain.java"


# static fields
.field private static mArrayResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static mFilterMenu:Lcom/android/settings/search/SearchFilterMenu;

.field private static mSearchManger:Lcom/android/settings/search/SettingSearchManager;


# instance fields
.field mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mSearchEditText:Landroid/widget/EditText;

.field private mSearchListView:Landroid/widget/ListView;

.field private mSearchMainFilter:Landroid/content/IntentFilter;

.field private final mSearchMainReceiver:Landroid/content/BroadcastReceiver;

.field mWatcherTextChangedListener:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/search/SearchMain;->mArrayResultList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/android/settings/search/SearchMain;->mSearchListView:Landroid/widget/ListView;

    .line 30
    iput-object v0, p0, Lcom/android/settings/search/SearchMain;->mSearchEditText:Landroid/widget/EditText;

    .line 38
    new-instance v0, Lcom/android/settings/search/SearchMain$1;

    invoke-direct {v0, p0}, Lcom/android/settings/search/SearchMain$1;-><init>(Lcom/android/settings/search/SearchMain;)V

    iput-object v0, p0, Lcom/android/settings/search/SearchMain;->mSearchMainReceiver:Landroid/content/BroadcastReceiver;

    .line 101
    new-instance v0, Lcom/android/settings/search/SearchMain$2;

    invoke-direct {v0, p0}, Lcom/android/settings/search/SearchMain$2;-><init>(Lcom/android/settings/search/SearchMain;)V

    iput-object v0, p0, Lcom/android/settings/search/SearchMain;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 108
    new-instance v0, Lcom/android/settings/search/SearchMain$3;

    invoke-direct {v0, p0}, Lcom/android/settings/search/SearchMain$3;-><init>(Lcom/android/settings/search/SearchMain;)V

    iput-object v0, p0, Lcom/android/settings/search/SearchMain;->mWatcherTextChangedListener:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/search/SearchMain;Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/search/SearchMain;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/settings/search/SearchMain;->searchMenu(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/search/SearchMain;Ljava/util/ArrayList;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/search/SearchMain;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/lang/CharSequence;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/settings/search/SearchMain;->updateList(Ljava/util/ArrayList;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private searchMenu(Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "keyWord"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v1, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/search/SearchItem;>;"
    sget-object v2, Lcom/android/settings/search/SearchMain;->mArrayResultList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 157
    sget-object v2, Lcom/android/settings/search/SearchMain;->mSearchManger:Lcom/android/settings/search/SettingSearchManager;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/search/SettingSearchManager;->getTitleInfoDB(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    sput-object v2, Lcom/android/settings/search/SearchMain;->mArrayResultList:Ljava/util/ArrayList;

    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/settings/search/SearchMain;->mArrayResultList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 160
    sget-object v3, Lcom/android/settings/search/SearchMain;->mFilterMenu:Lcom/android/settings/search/SearchFilterMenu;

    sget-object v2, Lcom/android/settings/search/SearchMain;->mArrayResultList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/search/SearchItem;

    iget-object v2, v2, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/settings/search/SearchFilterMenu;->getDynamiRemoveResult(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    sget-object v2, Lcom/android/settings/search/SearchMain;->mArrayResultList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_1
    return-object v1
.end method

.method private updateList(Ljava/util/ArrayList;Ljava/lang/CharSequence;)V
    .locals 5
    .param p2, "keyWord"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SearchItem;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/search/SearchItem;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Lcom/android/settings/search/SearchItem;

    .line 134
    .local v2, "searchResultItem":[Lcom/android/settings/search/SearchItem;
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 135
    iget-object v3, p0, Lcom/android/settings/search/SearchMain;->mSearchListView:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 144
    :goto_0
    return-void

    .line 137
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 138
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/search/SearchItem;

    aput-object v3, v2, v1

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 140
    :cond_1
    new-instance v0, Lcom/android/settings/search/SearchListAdapter;

    sget-object v3, Lcom/android/settings/search/SearchMain;->mContext:Landroid/content/Context;

    const v4, 0x7f040140

    invoke-direct {v0, v3, v4, v2, p2}, Lcom/android/settings/search/SearchListAdapter;-><init>(Landroid/content/Context;I[Lcom/android/settings/search/SearchItem;Ljava/lang/CharSequence;)V

    .line 141
    .local v0, "adapter":Lcom/android/settings/search/SearchListAdapter;
    iget-object v3, p0, Lcom/android/settings/search/SearchMain;->mSearchListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/settings/search/SearchMain;->finish()V

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.SettingsTabActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchMain;->startActivity(Landroid/content/Intent;)V

    .line 99
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 49
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    sput-object p0, Lcom/android/settings/search/SearchMain;->mContext:Landroid/content/Context;

    .line 53
    const v3, 0x1020404

    invoke-virtual {p0, v3}, Lcom/android/settings/search/SearchMain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 54
    .local v1, "listHeader":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/search/SearchMain;->mSearchEditText:Landroid/widget/EditText;

    .line 55
    iget-object v3, p0, Lcom/android/settings/search/SearchMain;->mSearchEditText:Landroid/widget/EditText;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    iget-object v3, p0, Lcom/android/settings/search/SearchMain;->mSearchEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/settings/search/SearchMain;->mWatcherTextChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 57
    iget-object v3, p0, Lcom/android/settings/search/SearchMain;->mSearchEditText:Landroid/widget/EditText;

    const v4, 0x7f0904e0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 58
    iget-object v3, p0, Lcom/android/settings/search/SearchMain;->mSearchEditText:Landroid/widget/EditText;

    const v4, 0x7f0201ae

    invoke-virtual {v3, v4, v7, v7, v7}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 59
    iget-object v3, p0, Lcom/android/settings/search/SearchMain;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/search/SearchMain;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/search/SearchMain;->mSearchListView:Landroid/widget/ListView;

    .line 64
    new-instance v3, Lcom/android/settings/search/SettingSearchManager;

    sget-object v4, Lcom/android/settings/search/SearchMain;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/settings/search/SettingSearchManager;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/settings/search/SearchMain;->mSearchManger:Lcom/android/settings/search/SettingSearchManager;

    .line 66
    sget-object v3, Lcom/android/settings/search/SearchMain;->mArrayResultList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Lcom/android/settings/search/SearchItem;

    .line 67
    .local v2, "searchItem2":[Lcom/android/settings/search/SearchItem;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/android/settings/search/SearchMain;->mArrayResultList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 68
    sget-object v3, Lcom/android/settings/search/SearchMain;->mArrayResultList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/search/SearchItem;

    aput-object v3, v2, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, p0, Lcom/android/settings/search/SearchMain;->mSearchMainFilter:Landroid/content/IntentFilter;

    .line 72
    iget-object v3, p0, Lcom/android/settings/search/SearchMain;->mSearchMainFilter:Landroid/content/IntentFilter;

    const-string v4, "android.settings.FINISH_SETTING_SEARCH_MAIN"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    iget-object v3, p0, Lcom/android/settings/search/SearchMain;->mSearchMainReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/settings/search/SearchMain;->mSearchMainFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/search/SearchMain;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 88
    const-string v0, "SearchMain"

    const-string v1, "onDestory() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/android/settings/search/SearchMain;->mSearchMainReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchMain;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 90
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 78
    const-string v0, "SearchMain"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 80
    new-instance v0, Lcom/android/settings/search/SearchFilterMenu;

    sget-object v1, Lcom/android/settings/search/SearchMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/search/SearchFilterMenu;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/search/SearchMain;->mFilterMenu:Lcom/android/settings/search/SearchFilterMenu;

    .line 81
    sget-object v0, Lcom/android/settings/search/SearchMain;->mFilterMenu:Lcom/android/settings/search/SearchFilterMenu;

    invoke-virtual {v0}, Lcom/android/settings/search/SearchFilterMenu;->initDynamicPreferenceRemovekey()V

    .line 83
    return-void
.end method

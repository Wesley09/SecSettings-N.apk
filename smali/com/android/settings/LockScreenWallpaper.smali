.class public Lcom/android/settings/LockScreenWallpaper;
.super Lcom/android/internal/app/AlertActivity;
.source "LockScreenWallpaper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/LockScreenWallpaper$AlphaComparator;,
        Lcom/android/settings/LockScreenWallpaper$ItemLongClickListener;,
        Lcom/android/settings/LockScreenWallpaper$ViewHolder;,
        Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;
    }
.end annotation


# instance fields
.field private ItemName:[Ljava/lang/String;

.field private isTypeBoth:Z

.field private mAdapter:Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;

.field private mDirectWallpaper:Z

.field private mGrid:Landroid/widget/GridView;

.field private mIconSize:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPm:Landroid/content/pm/PackageManager;

.field private rList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private rListLock:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    .line 64
    iput-boolean v1, p0, Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z

    .line 70
    iput-boolean v1, p0, Lcom/android/settings/LockScreenWallpaper;->mDirectWallpaper:Z

    .line 321
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockScreenWallpaper;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/LockScreenWallpaper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockScreenWallpaper;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/LockScreenWallpaper;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockScreenWallpaper;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/LockScreenWallpaper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/LockScreenWallpaper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockScreenWallpaper;

    .prologue
    .line 45
    iget v0, p0, Lcom/android/settings/LockScreenWallpaper;->mIconSize:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/LockScreenWallpaper;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockScreenWallpaper;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/LockScreenWallpaper;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockScreenWallpaper;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 75
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/settings/LockScreenWallpaper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/settings/LockScreenWallpaper;->mInflater:Landroid/view/LayoutInflater;

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "direct_wallpaper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/LockScreenWallpaper;->mDirectWallpaper:Z

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "both"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v5, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/LockScreenWallpaper;->mDirectWallpaper:Z

    if-eqz v2, :cond_1

    .line 85
    :cond_0
    iput-boolean v5, p0, Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z

    .line 87
    :cond_1
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/android/settings/LockScreenWallpaper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 88
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v2

    iput v2, p0, Lcom/android/settings/LockScreenWallpaper;->mIconSize:I

    .line 90
    iget-object v1, p0, Lcom/android/settings/LockScreenWallpaper;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 92
    .local v1, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0909f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x109013f

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 94
    iget-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x1020415

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/android/settings/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    .line 95
    iget-object v2, p0, Lcom/android/settings/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    iget-object v2, p0, Lcom/android/settings/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    new-instance v3, Lcom/android/settings/LockScreenWallpaper$ItemLongClickListener;

    invoke-direct {v3, p0}, Lcom/android/settings/LockScreenWallpaper$ItemLongClickListener;-><init>(Lcom/android/settings/LockScreenWallpaper;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->setupAlert()V

    .line 98
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    .line 139
    const-string v4, "com.sec.android.gallery3d"

    iget-object v5, p0, Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    aget-object v5, v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 141
    .local v0, "intent":Landroid/content/Intent;
    iget-boolean v4, p0, Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z

    if-eqz v4, :cond_0

    .line 142
    const-string v4, "com.sec.android.gallery3d"

    const-string v5, "com.sec.android.gallery3d.app.BothScreen"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    .line 173
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->finish()V

    .line 174
    return-void

    .line 144
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v4, "com.sec.android.gallery3d"

    const-string v5, "com.sec.android.gallery3d.app.LockScreen"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 146
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v4, "com.android.wallpaper.livepicker"

    iget-object v5, p0, Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    aget-object v5, v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 147
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 148
    .local v2, "intentLiveWallpaperChooser":Landroid/content/Intent;
    const-string v4, "SET_LOCKSCREEN_WALLPAPER"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.wallpaper.livepicker"

    const-string v6, "com.android.wallpaper.livepicker.LiveWallpaperActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0, v2}, Lcom/android/settings/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 154
    .end local v2    # "intentLiveWallpaperChooser":Landroid/content/Intent;
    :cond_2
    const-string v4, "com.samsung.android.service.travel"

    iget-object v5, p0, Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    aget-object v5, v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 155
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 156
    .local v3, "intentTravelWallpaper":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.samsung.android.service.travel"

    const-string v6, "com.samsung.android.travel.TravelWallActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0, v3}, Lcom/android/settings/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 164
    .end local v3    # "intentTravelWallpaper":Landroid/content/Intent;
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 165
    .local v1, "intentCallWallpaperChooser":Landroid/content/Intent;
    iget-boolean v4, p0, Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z

    if-eqz v4, :cond_4

    .line 166
    const-string v4, "SET_WALLPAPER_MODE"

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 169
    :goto_2
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.app.wallpaperchooser"

    const-string v6, "com.sec.android.app.wallpaperchooser.WallpaperChooser"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0, v1}, Lcom/android/settings/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 168
    :cond_4
    const-string v4, "SET_WALLPAPER_MODE"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/high16 v4, 0x10000

    .line 102
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    .line 106
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v2, "pickWallpaper":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;

    .line 111
    iget-boolean v3, p0, Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z

    if-nez v3, :cond_1

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.android.service.travel"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, "LockpickWallpaper":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/LockScreenWallpaper;->rListLock:Ljava/util/List;

    .line 116
    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 117
    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->rListLock:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rListLock"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    .end local v0    # "LockpickWallpaper":Landroid/content/Intent;
    :cond_1
    new-instance v1, Lcom/android/settings/LockScreenWallpaper$AlphaComparator;

    invoke-direct {v1, p0}, Lcom/android/settings/LockScreenWallpaper$AlphaComparator;-><init>(Lcom/android/settings/LockScreenWallpaper;)V

    .line 127
    .local v1, "mAlphaComparator":Lcom/android/settings/LockScreenWallpaper$AlphaComparator;
    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 129
    new-instance v3, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;

    invoke-direct {v3, p0, p0}, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;-><init>(Lcom/android/settings/LockScreenWallpaper;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/LockScreenWallpaper;->mAdapter:Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;

    .line 131
    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->mAdapter:Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->resizeGrid()V

    .line 135
    return-void
.end method

.method resizeGrid()V
    .locals 4

    .prologue
    .line 294
    iget-object v2, p0, Lcom/android/settings/LockScreenWallpaper;->mAdapter:Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;

    invoke-virtual {v2}, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->getCount()I

    move-result v0

    .line 295
    .local v0, "itemCount":I
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 296
    .local v1, "maxColumns":I
    iget-object v2, p0, Lcom/android/settings/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 297
    return-void
.end method

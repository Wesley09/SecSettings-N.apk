.class Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SettingsSearchFilterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/SettingsSearchFilterAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private parentView:Landroid/widget/TextView;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/search/SettingsSearchFilterAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/search/SettingsSearchFilterAdapter$1;

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;->parentView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;->parentView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    return-object p1
.end method

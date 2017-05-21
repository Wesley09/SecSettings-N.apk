.class Lcom/android/settings/search/SearchItem$TitleInfoItem;
.super Ljava/lang/Object;
.source "SearchItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/SearchItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TitleInfoItem"
.end annotation


# instance fields
.field public icon_id:I

.field public id_key:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public menuType:I

.field public summary:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v1, p0, Lcom/android/settings/search/SearchItem$TitleInfoItem;->id_key:Ljava/lang/String;

    .line 44
    iput v2, p0, Lcom/android/settings/search/SearchItem$TitleInfoItem;->icon_id:I

    .line 45
    iput-object v1, p0, Lcom/android/settings/search/SearchItem$TitleInfoItem;->title:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/search/SearchItem$TitleInfoItem;->summary:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/android/settings/search/SearchItem$TitleInfoItem;->language:Ljava/lang/String;

    .line 48
    iput v2, p0, Lcom/android/settings/search/SearchItem$TitleInfoItem;->menuType:I

    .line 52
    return-void
.end method

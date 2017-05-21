.class public Lcom/android/settings/search/SearchItem;
.super Ljava/lang/Object;
.source "SearchItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search/SearchItem$MenuInfoItem;,
        Lcom/android/settings/search/SearchItem$TitleInfoItem;
    }
.end annotation


# instance fields
.field public fragment:Ljava/lang/String;

.field public fragmentExtra:Ljava/lang/String;

.field public iconResId:I

.field public id_key:Ljava/lang/String;

.field public intent:Landroid/content/Intent;

.field public menuType:I

.field public pakageName:Ljava/lang/String;

.field public parentsKey:Ljava/lang/String;

.field public rowId:I

.field public sintent:Ljava/lang/String;

.field public summary:Ljava/lang/String;

.field public summaryResId:J

.field public title:Ljava/lang/String;

.field public titleResId:J

.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v2, p0, Lcom/android/settings/search/SearchItem;->rowId:I

    .line 12
    iput-wide v3, p0, Lcom/android/settings/search/SearchItem;->titleResId:J

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    .line 15
    iput-wide v3, p0, Lcom/android/settings/search/SearchItem;->summaryResId:J

    .line 17
    iput v2, p0, Lcom/android/settings/search/SearchItem;->iconResId:I

    .line 19
    iput-object v1, p0, Lcom/android/settings/search/SearchItem;->fragment:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/android/settings/search/SearchItem;->fragmentExtra:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/android/settings/search/SearchItem;->intent:Landroid/content/Intent;

    .line 23
    iput-object v1, p0, Lcom/android/settings/search/SearchItem;->sintent:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/android/settings/search/SearchItem;->pakageName:Ljava/lang/String;

    .line 28
    iput v2, p0, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 29
    iput v2, p0, Lcom/android/settings/search/SearchItem;->value:I

    .line 33
    return-void
.end method

.class Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;
.super Ljava/lang/Object;
.source "SearchDirectSettingUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/SearchDirectSettingUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchDirectDBInfo"
.end annotation


# instance fields
.field DBName:Ljava/lang/String;

.field DBType:I

.field keyName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/search/SearchDirectSettingUpdate;


# direct methods
.method constructor <init>(Lcom/android/settings/search/SearchDirectSettingUpdate;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 465
    iput-object p1, p0, Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;->this$0:Lcom/android/settings/search/SearchDirectSettingUpdate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 466
    iput-object v0, p0, Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;->keyName:Ljava/lang/String;

    .line 467
    iput-object v0, p0, Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;->DBName:Ljava/lang/String;

    .line 468
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;->DBType:I

    return-void
.end method

.class public Lcom/android/settings/search/SettingSearchManager;
.super Ljava/lang/Object;
.source "SettingSearchManager.java"


# static fields
.field public static final SETTINGINFO_URI:Landroid/net/Uri;

.field public static final SETTINGSEARCH_URI:Landroid/net/Uri;

.field static final TEXTINFO_PROJECTION:[Ljava/lang/String;

.field public static final TITLEINFO_URI:Landroid/net/Uri;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private final DATA_EMPTY:I

.field public final TABLE_ALL:I

.field public final TABLE_SETTINGINFO:I

.field public final TABLE_SETTINGINFO_ITEM_ID_KEY:I

.field public final TABLE_TEXTINFO:I

.field public final TABLE_TEXTINFO_ITEM_ID_KEY:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/search/SettingSearchManager;->mContext:Landroid/content/Context;

    .line 19
    const-string v0, "content://com.android.providers.settingsearch"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/search/SettingSearchManager;->SETTINGSEARCH_URI:Landroid/net/Uri;

    .line 20
    const-string v0, "content://com.android.providers.settingsearch/searchinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/search/SettingSearchManager;->SETTINGINFO_URI:Landroid/net/Uri;

    .line 21
    const-string v0, "content://com.android.providers.settingsearch/titleinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/search/SettingSearchManager;->TITLEINFO_URI:Landroid/net/Uri;

    .line 53
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "suggest_intent_data_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "id_key"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title AS suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "summary AS suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "icon AS suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "menu_type AS suggest_extra"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/search/SettingSearchManager;->TEXTINFO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/search/SettingSearchManager;->DATA_EMPTY:I

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/search/SettingSearchManager;->TABLE_ALL:I

    .line 24
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/settings/search/SettingSearchManager;->TABLE_SETTINGINFO:I

    .line 25
    const/16 v0, 0x44c

    iput v0, p0, Lcom/android/settings/search/SettingSearchManager;->TABLE_SETTINGINFO_ITEM_ID_KEY:I

    .line 26
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/settings/search/SettingSearchManager;->TABLE_TEXTINFO:I

    .line 27
    const/16 v0, 0x834

    iput v0, p0, Lcom/android/settings/search/SettingSearchManager;->TABLE_TEXTINFO_ITEM_ID_KEY:I

    .line 62
    sput-object p1, Lcom/android/settings/search/SettingSearchManager;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method


# virtual methods
.method public Delete(ILjava/lang/String;)V
    .locals 6
    .param p1, "delet"    # I
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 458
    const-string v0, "id_key MATCH ?"

    .line 460
    .local v0, "select":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 492
    :goto_0
    return-void

    .line 462
    :sswitch_0
    sget-object v1, Lcom/android/settings/search/SettingSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/search/SettingSearchManager;->SETTINGINFO_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 467
    :sswitch_1
    sget-object v1, Lcom/android/settings/search/SettingSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/search/SettingSearchManager;->SETTINGINFO_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "id_key"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 473
    :sswitch_2
    sget-object v1, Lcom/android/settings/search/SettingSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/search/SettingSearchManager;->TITLEINFO_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 478
    :sswitch_3
    sget-object v1, Lcom/android/settings/search/SettingSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/search/SettingSearchManager;->TITLEINFO_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "id_key"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 485
    :sswitch_4
    sget-object v1, Lcom/android/settings/search/SettingSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/search/SettingSearchManager;->SETTINGSEARCH_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 460
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x3e8 -> :sswitch_0
        0x44c -> :sswitch_1
        0x7d0 -> :sswitch_2
        0x834 -> :sswitch_3
    .end sparse-switch
.end method

.method public addSearchInfoDB(Lcom/android/settings/search/SearchItem;)V
    .locals 4
    .param p1, "addItem"    # Lcom/android/settings/search/SearchItem;

    .prologue
    .line 110
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 113
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "id_key"

    iget-object v2, p1, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v1, "title"

    iget-object v2, p1, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v1, "title_res_id"

    iget-wide v2, p1, Lcom/android/settings/search/SearchItem;->titleResId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 122
    const-string v1, "summary"

    iget-object v2, p1, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v1, "summary_res_id"

    iget-wide v2, p1, Lcom/android/settings/search/SearchItem;->summaryResId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 128
    const-string v1, "icon_res_id"

    iget v2, p1, Lcom/android/settings/search/SearchItem;->iconResId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    const-string v1, "fragment"

    iget-object v2, p1, Lcom/android/settings/search/SearchItem;->fragment:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v1, "fragment_extra"

    iget-object v2, p1, Lcom/android/settings/search/SearchItem;->fragmentExtra:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v1, "intent"

    iget-object v2, p1, Lcom/android/settings/search/SearchItem;->sintent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v1, "parentskey"

    iget-object v2, p1, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v1, "menu_type"

    iget v2, p1, Lcom/android/settings/search/SearchItem;->menuType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    sget-object v1, Lcom/android/settings/search/SettingSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/search/SettingSearchManager;->SETTINGINFO_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 143
    return-void
.end method

.method public addTextInfoDB(Lcom/android/settings/search/SearchItem$TitleInfoItem;)V
    .locals 5
    .param p1, "addItem"    # Lcom/android/settings/search/SearchItem$TitleInfoItem;

    .prologue
    .line 148
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 151
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "id_key"

    iget-object v2, p1, Lcom/android/settings/search/SearchItem$TitleInfoItem;->id_key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v1, "icon"

    iget v2, p1, Lcom/android/settings/search/SearchItem$TitleInfoItem;->icon_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    const-string v1, "title"

    iget-object v2, p1, Lcom/android/settings/search/SearchItem$TitleInfoItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v1, "summary"

    iget-object v2, p1, Lcom/android/settings/search/SearchItem$TitleInfoItem;->summary:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%1[$]s"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v1, "language"

    iget-object v2, p1, Lcom/android/settings/search/SearchItem$TitleInfoItem;->language:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v1, "menu_type"

    iget v2, p1, Lcom/android/settings/search/SearchItem$TitleInfoItem;->menuType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    sget-object v1, Lcom/android/settings/search/SettingSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/search/SettingSearchManager;->TITLEINFO_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 168
    return-void
.end method

.method public getTitleInfoDB(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 16
    .param p1, "word"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v15, "getItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/search/SearchItem;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 425
    const-string v1, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    :goto_0
    return-object v15

    .line 427
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\' OR ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "summary"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\' AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NOTNULL )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 429
    .local v4, "select":Ljava/lang/String;
    sget-object v1, Lcom/android/settings/search/SettingSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/search/SettingSearchManager;->TITLEINFO_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/settings/search/SettingSearchManager;->TEXTINFO_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "title"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 431
    .local v9, "c":Landroid/database/Cursor;
    const-string v1, "suggest_intent_data_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 432
    .local v12, "cROWID":I
    const-string v1, "id_key"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 433
    .local v11, "cID_KEY":I
    const-string v1, "suggest_text_1"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 434
    .local v14, "cTITLE":I
    const-string v1, "suggest_icon_1"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 435
    .local v10, "cICON":I
    const-string v1, "suggest_text_2"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 436
    .local v13, "cSUMMARY":I
    const-string v1, "suggest_extra"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 437
    .local v7, "CMENU_TYPE":I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 439
    new-instance v8, Lcom/android/settings/search/SearchItem;

    invoke-direct {v8}, Lcom/android/settings/search/SearchItem;-><init>()V

    .line 440
    .local v8, "addItem":Lcom/android/settings/search/SearchItem;
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v8, Lcom/android/settings/search/SearchItem;->rowId:I

    .line 441
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    .line 442
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    .line 443
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v8, Lcom/android/settings/search/SearchItem;->iconResId:I

    .line 444
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    .line 445
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v8, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 446
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 450
    .end local v8    # "addItem":Lcom/android/settings/search/SearchItem;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public refer_settinginfo_db_for_titleinfo()Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v17, "getItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/search/SearchItem;>;"
    sget-object v1, Lcom/android/settings/search/SettingSearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/search/SettingSearchManager;->SETTINGINFO_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 284
    .local v8, "c":Landroid/database/Cursor;
    const-string v1, "id_key"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 285
    .local v10, "cID_KEY":I
    const-string v1, "title"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 286
    .local v15, "cTITLE":I
    const-string v1, "title_res_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 287
    .local v16, "cTITLE_RES_ID":I
    const-string v1, "summary"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 288
    .local v13, "cSUMMARY":I
    const-string v1, "summary_res_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 289
    .local v14, "cSUMMARY_RES_ID":I
    const-string v1, "icon_res_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 290
    .local v9, "cICON_RES_ID":I
    const-string v1, "menu_type"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 291
    .local v11, "cMENU_TYPE":I
    const-string v1, "package_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 293
    .local v12, "cPakage_NAME":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 295
    new-instance v7, Lcom/android/settings/search/SearchItem;

    invoke-direct {v7}, Lcom/android/settings/search/SearchItem;-><init>()V

    .line 296
    .local v7, "addItem":Lcom/android/settings/search/SearchItem;
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    .line 297
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    .line 298
    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v7, Lcom/android/settings/search/SearchItem;->titleResId:J

    .line 299
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    .line 300
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v7, Lcom/android/settings/search/SearchItem;->summaryResId:J

    .line 301
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lcom/android/settings/search/SearchItem;->iconResId:I

    .line 302
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 303
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/settings/search/SearchItem;->pakageName:Ljava/lang/String;

    .line 304
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 307
    .end local v7    # "addItem":Lcom/android/settings/search/SearchItem;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 309
    return-object v17
.end method

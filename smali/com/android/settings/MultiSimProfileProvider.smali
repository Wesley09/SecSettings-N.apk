.class public Lcom/android/settings/MultiSimProfileProvider;
.super Landroid/content/ContentProvider;
.source "MultiSimProfileProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MultiSimProfileProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final COLUMS:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/android/settings/MultiSimProfileProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 21
    const-string v0, "content://com.android.settings/multisimprofile"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/MultiSimProfileProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 39
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/settings/MultiSimProfileProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 40
    sget-object v0, Lcom/android/settings/MultiSimProfileProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.settings"

    const-string v2, "multisimprofile"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "select_name_"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "select_icon_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "prefered_voice_call"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "prefered_video_call"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data_service"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/MultiSimProfileProvider;->COLUMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 93
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/settings/MultiSimProfileProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "MultiSim_list"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/MultiSimProfileProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 96
    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 102
    const-string v0, "vnd.android.cursor.dir/MultiSim_list"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 107
    iget-object v3, p0, Lcom/android/settings/MultiSimProfileProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "MultiSim_list"

    const-string v5, ""

    invoke-virtual {v3, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 109
    .local v1, "rowID":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 110
    sget-object v3, Lcom/android/settings/MultiSimProfileProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 111
    .local v0, "_uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/settings/MultiSimProfileProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 112
    return-object v0

    .line 114
    .end local v0    # "_uri":Landroid/net/Uri;
    :cond_0
    new-instance v3, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to insert row into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/settings/MultiSimProfileProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MultiSimProfileProvider;->mContext:Landroid/content/Context;

    .line 120
    new-instance v0, Lcom/android/settings/MultiSimProfileProvider$DatabaseHelper;

    iget-object v1, p0, Lcom/android/settings/MultiSimProfileProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/MultiSimProfileProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MultiSimProfileProvider;->mDbHelper:Lcom/android/settings/MultiSimProfileProvider$DatabaseHelper;

    .line 121
    iget-object v0, p0, Lcom/android/settings/MultiSimProfileProvider;->mDbHelper:Lcom/android/settings/MultiSimProfileProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/settings/MultiSimProfileProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MultiSimProfileProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 123
    iget-object v0, p0, Lcom/android/settings/MultiSimProfileProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 130
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 131
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "MultiSim_list"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/android/settings/MultiSimProfileProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 134
    .local v8, "c":Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/settings/MultiSimProfileProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v8, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 135
    return-object v8
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 142
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/settings/MultiSimProfileProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "MultiSim_list"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/MultiSimProfileProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 145
    return v0
.end method

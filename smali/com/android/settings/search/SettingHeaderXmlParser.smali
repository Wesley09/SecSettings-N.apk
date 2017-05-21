.class public Lcom/android/settings/search/SettingHeaderXmlParser;
.super Ljava/lang/Object;
.source "SettingHeaderXmlParser.java"


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final headerSwitchMenu:[I

.field private mCheckingExceptionCount:I

.field private mExceptionCount:I

.field mMenuInfoItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SearchItem$MenuInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field public mSearchManager:Lcom/android/settings/search/SettingSearchManager;

.field xmlParserHeadFile:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field xmlParserPreferenceFile:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "SettingHeaderXmlParser"

    iput-object v0, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->TAG:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->xmlParserHeadFile:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->xmlParserPreferenceFile:Ljava/util/ArrayList;

    .line 38
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerSwitchMenu:[I

    .line 43
    iput v1, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mExceptionCount:I

    .line 44
    iput v1, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mCheckingExceptionCount:I

    .line 47
    sput-object p1, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Lcom/android/settings/search/SettingSearchManager;

    sget-object v1, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/search/SettingSearchManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mSearchManager:Lcom/android/settings/search/SettingSearchManager;

    .line 49
    return-void

    .line 38
    :array_0
    .array-data 4
        0x7f0b0584
        0x7f0b0586
        0x7f0b058f
        0x7f0b0590
        0x7f0b059e
        0x7f0b05a4
        0x7f0b05af
        0x7f0b05b1
    .end array-data
.end method

.method private addHeaderPreferencesFromRes(I)V
    .locals 26
    .param p1, "resid"    # I

    .prologue
    .line 144
    const/16 v17, 0x0

    .line 146
    .local v17, "parser":Landroid/content/res/XmlResourceParser;
    sget-object v23, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 147
    .local v18, "resource":Landroid/content/res/Resources;
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 148
    .local v3, "assets":Landroid/content/res/AssetManager;
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 149
    .local v14, "metrics":Landroid/util/DisplayMetrics;
    new-instance v5, Landroid/content/res/Configuration;

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 150
    .local v5, "config":Landroid/content/res/Configuration;
    sget-object v23, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v23

    iput-object v0, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 151
    new-instance v7, Landroid/content/res/Resources;

    invoke-direct {v7, v3, v14, v5}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 155
    .local v7, "defaultResources":Landroid/content/res/Resources;
    :try_start_0
    sget-object v23, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v17

    .line 156
    invoke-static/range {v17 .. v17}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 160
    .local v4, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v22

    .local v22, "type":I
    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 163
    :cond_1
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 164
    .local v15, "nodeName":Ljava/lang/String;
    const-string v23, "preference-headers"

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_3

    .line 165
    new-instance v23, Ljava/lang/RuntimeException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "XML document must start with <preference-headers> tag; found"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " at "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v15    # "nodeName":Ljava/lang/String;
    .end local v22    # "type":I
    :catch_0
    move-exception v8

    .line 267
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v23, "SettingHeaderXmlParser"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! xml id : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    if-eqz v17, :cond_2

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->close()V

    .line 271
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-void

    .line 170
    .restart local v4    # "attrs":Landroid/util/AttributeSet;
    .restart local v15    # "nodeName":Ljava/lang/String;
    .restart local v22    # "type":I
    :cond_3
    const/4 v6, 0x0

    .line 172
    .local v6, "curBundle":Landroid/os/Bundle;
    :try_start_2
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v16

    .line 174
    .local v16, "outerDepth":I
    :cond_4
    :goto_1
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_17

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v23

    move/from16 v0, v23

    move/from16 v1, v16

    if-le v0, v1, :cond_17

    .line 175
    :cond_5
    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    .line 179
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 180
    const-string v23, "header"

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 181
    new-instance v20, Lcom/android/settings/search/SearchItem;

    invoke-direct/range {v20 .. v20}, Lcom/android/settings/search/SearchItem;-><init>()V

    .line 184
    .local v20, "searchItem":Lcom/android/settings/search/SearchItem;
    sget-object v23, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    sget-object v24, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v19

    .line 185
    .local v19, "sa":Landroid/content/res/TypedArray;
    const/16 v23, 0x1

    const/16 v24, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 186
    .local v10, "id_key_num":I
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    .line 187
    const v23, 0x7f0b05a2

    move/from16 v0, v23

    if-ne v10, v0, :cond_7

    .line 188
    const-string v23, "Safety assistance"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    .line 194
    :cond_6
    :goto_2
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerSwitchMenu:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v9, v0, :cond_a

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerSwitchMenu:[I

    move-object/from16 v23, v0

    aget v23, v23, v9

    move/from16 v0, v23

    if-ne v0, v10, :cond_9

    .line 196
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->headerSwitchMenu:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v9, v0

    .line 194
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 189
    .end local v9    # "i":I
    :cond_7
    const v23, 0x7f0b059d

    move/from16 v0, v23

    if-ne v10, v0, :cond_6

    .line 190
    const-string v23, "Call settings"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 269
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v6    # "curBundle":Landroid/os/Bundle;
    .end local v10    # "id_key_num":I
    .end local v15    # "nodeName":Ljava/lang/String;
    .end local v16    # "outerDepth":I
    .end local v19    # "sa":Landroid/content/res/TypedArray;
    .end local v20    # "searchItem":Lcom/android/settings/search/SearchItem;
    .end local v22    # "type":I
    :catchall_0
    move-exception v23

    if-eqz v17, :cond_8

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_8
    throw v23

    .line 199
    .restart local v4    # "attrs":Landroid/util/AttributeSet;
    .restart local v6    # "curBundle":Landroid/os/Bundle;
    .restart local v9    # "i":I
    .restart local v10    # "id_key_num":I
    .restart local v15    # "nodeName":Ljava/lang/String;
    .restart local v16    # "outerDepth":I
    .restart local v19    # "sa":Landroid/content/res/TypedArray;
    .restart local v20    # "searchItem":Lcom/android/settings/search/SearchItem;
    .restart local v22    # "type":I
    :cond_9
    const/16 v23, 0x0

    :try_start_3
    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/settings/search/SearchItem;->menuType:I

    goto :goto_4

    .line 204
    :cond_a
    const/16 v23, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v21

    .line 205
    .local v21, "tv":Landroid/util/TypedValue;
    if-eqz v21, :cond_c

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_b

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    .line 206
    :cond_b
    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v23, v0

    if-eqz v23, :cond_10

    .line 207
    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/settings/search/SearchItem;->titleResId:J

    .line 208
    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    .line 216
    :cond_c
    :goto_5
    const/16 v23, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v21

    .line 217
    if-eqz v21, :cond_e

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_d

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    .line 218
    :cond_d
    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v23, v0

    if-eqz v23, :cond_11

    .line 219
    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/settings/search/SearchItem;->summaryResId:J

    .line 220
    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    .line 227
    :cond_e
    :goto_6
    const/16 v23, 0x0

    const/16 v24, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/settings/search/SearchItem;->iconResId:I

    .line 230
    const/16 v23, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->fragment:Ljava/lang/String;

    .line 234
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    .line 236
    .local v12, "innerDepth":I
    :cond_f
    :goto_7
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_14

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_14

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v23

    move/from16 v0, v23

    if-le v0, v12, :cond_14

    .line 237
    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_f

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_f

    .line 241
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 242
    .local v13, "innerNodeName":Ljava/lang/String;
    const-string v23, "extra"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_12

    .line 243
    sget-object v23, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const-string v24, "extra"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v4, v6}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 244
    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_7

    .line 211
    .end local v12    # "innerDepth":I
    .end local v13    # "innerNodeName":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    goto/16 :goto_5

    .line 222
    :cond_11
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    goto/16 :goto_6

    .line 245
    .restart local v12    # "innerDepth":I
    .restart local v13    # "innerNodeName":Ljava/lang/String;
    :cond_12
    const-string v23, "intent"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 246
    sget-object v23, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->intent:Landroid/content/Intent;

    .line 247
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->intent:Landroid/content/Intent;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->sintent:Ljava/lang/String;

    goto/16 :goto_7

    .line 250
    :cond_13
    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_7

    .line 254
    .end local v13    # "innerNodeName":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/settings/search/SearchItem;->iconResId:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_15

    .line 255
    const/4 v11, 0x0

    .local v11, "index":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v11, v0, :cond_15

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->id_key:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->fileId:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, p1

    if-ne v0, v1, :cond_16

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->parentKey:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mSearchManager:Lcom/android/settings/search/SettingSearchManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/search/SettingSearchManager;->addSearchInfoDB(Lcom/android/settings/search/SearchItem;)V

    .line 263
    .end local v11    # "index":I
    :cond_15
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 255
    .restart local v11    # "index":I
    :cond_16
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 269
    .end local v9    # "i":I
    .end local v10    # "id_key_num":I
    .end local v11    # "index":I
    .end local v12    # "innerDepth":I
    .end local v19    # "sa":Landroid/content/res/TypedArray;
    .end local v20    # "searchItem":Lcom/android/settings/search/SearchItem;
    .end local v21    # "tv":Landroid/util/TypedValue;
    :cond_17
    if-eqz v17, :cond_2

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0
.end method

.method private addPreferencesScreenFromRes(I)Z
    .locals 26
    .param p1, "resid"    # I

    .prologue
    .line 274
    const/16 v17, 0x0

    .line 276
    .local v17, "parser":Landroid/content/res/XmlResourceParser;
    sget-object v22, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 277
    .local v18, "resource":Landroid/content/res/Resources;
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 278
    .local v3, "assets":Landroid/content/res/AssetManager;
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 279
    .local v14, "metrics":Landroid/util/DisplayMetrics;
    new-instance v6, Landroid/content/res/Configuration;

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v6, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 280
    .local v6, "config":Landroid/content/res/Configuration;
    sget-object v22, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v22

    iput-object v0, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 281
    new-instance v8, Landroid/content/res/Resources;

    invoke-direct {v8, v3, v14, v6}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 284
    .local v8, "defaultResources":Landroid/content/res/Resources;
    :try_start_0
    sget-object v22, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v17

    .line 285
    invoke-static/range {v17 .. v17}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 289
    .local v5, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v21

    .local v21, "type":I
    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 292
    :cond_1
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 293
    .local v15, "nodeName":Ljava/lang/String;
    const-string v22, "PreferenceScreen"

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 294
    new-instance v22, Ljava/lang/RuntimeException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "XML document must start with <preference-headers> tag; found"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " at "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    .end local v5    # "attrs":Landroid/util/AttributeSet;
    .end local v15    # "nodeName":Ljava/lang/String;
    .end local v21    # "type":I
    :catch_0
    move-exception v9

    .line 398
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v22, "SettingHeaderXmlParser"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception!!!!!!!!!!!!!!!!!!!!!! xml id : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    if-eqz v17, :cond_2

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->close()V

    .line 403
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    const/16 v22, 0x1

    return v22

    .line 299
    .restart local v5    # "attrs":Landroid/util/AttributeSet;
    .restart local v15    # "nodeName":Ljava/lang/String;
    .restart local v21    # "type":I
    :cond_3
    const/4 v7, 0x0

    .line 300
    .local v7, "curBundle":Landroid/os/Bundle;
    :try_start_2
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v16

    .line 302
    .local v16, "outerDepth":I
    :cond_4
    :goto_1
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_14

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v16

    if-le v0, v1, :cond_14

    .line 303
    :cond_5
    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 307
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 308
    const-string v22, "PreferenceCategory"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_4

    .line 310
    new-instance v20, Lcom/android/settings/search/SearchItem;

    invoke-direct/range {v20 .. v20}, Lcom/android/settings/search/SearchItem;-><init>()V

    .line 312
    .local v20, "searchItem":Lcom/android/settings/search/SearchItem;
    const-string v22, "CheckBoxPreference"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 313
    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 320
    :goto_2
    sget-object v22, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    sget-object v23, Lcom/android/internal/R$styleable;->Preference:[I

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v19

    .line 321
    .local v19, "sa":Landroid/content/res/TypedArray;
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v10

    .local v10, "i":I
    :goto_3
    if-ltz v10, :cond_b

    .line 322
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 323
    .local v4, "attr":I
    sparse-switch v4, :sswitch_data_0

    .line 321
    :goto_4
    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    .line 314
    .end local v4    # "attr":I
    .end local v10    # "i":I
    .end local v19    # "sa":Landroid/content/res/TypedArray;
    :cond_6
    const-string v22, "SwitchPreferenceScreen"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 315
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/settings/search/SearchItem;->menuType:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 401
    .end local v5    # "attrs":Landroid/util/AttributeSet;
    .end local v7    # "curBundle":Landroid/os/Bundle;
    .end local v15    # "nodeName":Ljava/lang/String;
    .end local v16    # "outerDepth":I
    .end local v20    # "searchItem":Lcom/android/settings/search/SearchItem;
    .end local v21    # "type":I
    :catchall_0
    move-exception v22

    if-eqz v17, :cond_7

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7
    throw v22

    .line 317
    .restart local v5    # "attrs":Landroid/util/AttributeSet;
    .restart local v7    # "curBundle":Landroid/os/Bundle;
    .restart local v15    # "nodeName":Ljava/lang/String;
    .restart local v16    # "outerDepth":I
    .restart local v20    # "searchItem":Lcom/android/settings/search/SearchItem;
    .restart local v21    # "type":I
    :cond_8
    const/16 v22, 0x0

    :try_start_3
    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/settings/search/SearchItem;->menuType:I

    goto :goto_2

    .line 325
    .restart local v4    # "attr":I
    .restart local v10    # "i":I
    .restart local v19    # "sa":Landroid/content/res/TypedArray;
    :sswitch_0
    const/16 v22, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/settings/search/SearchItem;->iconResId:I

    goto :goto_4

    .line 328
    :sswitch_1
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    goto :goto_4

    .line 331
    :sswitch_2
    const/16 v22, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/settings/search/SearchItem;->titleResId:J

    .line 332
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/settings/search/SearchItem;->titleResId:J

    move-wide/from16 v22, v0

    const-wide/16 v24, -0x1

    cmp-long v22, v22, v24

    if-eqz v22, :cond_9

    .line 333
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/settings/search/SearchItem;->titleResId:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    goto :goto_4

    .line 335
    :cond_9
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    goto/16 :goto_4

    .line 340
    :sswitch_3
    const/16 v22, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/settings/search/SearchItem;->summaryResId:J

    .line 341
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/settings/search/SearchItem;->summaryResId:J

    move-wide/from16 v22, v0

    const-wide/16 v24, -0x1

    cmp-long v22, v22, v24

    if-eqz v22, :cond_a

    .line 342
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/settings/search/SearchItem;->summaryResId:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    goto/16 :goto_4

    .line 344
    :cond_a
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    goto/16 :goto_4

    .line 349
    :sswitch_4
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->fragment:Ljava/lang/String;

    goto/16 :goto_4

    .line 354
    .end local v4    # "attr":I
    :cond_b
    if-nez v7, :cond_c

    .line 355
    new-instance v7, Landroid/os/Bundle;

    .end local v7    # "curBundle":Landroid/os/Bundle;
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 358
    .restart local v7    # "curBundle":Landroid/os/Bundle;
    :cond_c
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    .line 360
    .local v12, "innerDepth":I
    :cond_d
    :goto_5
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_10

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_10

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v12, :cond_10

    .line 361
    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_d

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_d

    .line 365
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 366
    .local v13, "innerNodeName":Ljava/lang/String;
    const-string v22, "extra"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 367
    sget-object v22, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const-string v23, "extra"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5, v7}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 368
    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 369
    :cond_e
    const-string v22, "intent"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 370
    sget-object v22, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-static {v0, v1, v5}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->intent:Landroid/content/Intent;

    .line 371
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->intent:Landroid/content/Intent;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->sintent:Ljava/lang/String;

    .line 373
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->intent:Landroid/content/Intent;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "has extras"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 374
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->intent:Landroid/content/Intent;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->fragmentExtra:Ljava/lang/String;

    goto/16 :goto_5

    .line 377
    :cond_f
    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_5

    .line 381
    .end local v13    # "innerNodeName":Ljava/lang/String;
    :cond_10
    invoke-virtual {v7}, Landroid/os/Bundle;->size()I

    move-result v22

    if-lez v22, :cond_11

    .line 382
    invoke-virtual {v7}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->fragmentExtra:Ljava/lang/String;

    .line 383
    const/4 v7, 0x0

    .line 386
    :cond_11
    const/4 v11, 0x0

    .local v11, "index":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v11, v0, :cond_12

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->id_key:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->fileId:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p1

    if-ne v0, v1, :cond_13

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->parentKey:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mSearchManager:Lcom/android/settings/search/SettingSearchManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/search/SettingSearchManager;->addSearchInfoDB(Lcom/android/settings/search/SearchItem;)V

    .line 394
    :cond_12
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 386
    :cond_13
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 401
    .end local v10    # "i":I
    .end local v11    # "index":I
    .end local v12    # "innerDepth":I
    .end local v19    # "sa":Landroid/content/res/TypedArray;
    .end local v20    # "searchItem":Lcom/android/settings/search/SearchItem;
    :cond_14
    if-eqz v17, :cond_2

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 323
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_2
        0x6 -> :sswitch_1
        0x7 -> :sswitch_3
        0xd -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public initSearchDB()V
    .locals 6

    .prologue
    .line 52
    new-instance v2, Lcom/android/settings/search/SettingsSearchUtils;

    sget-object v3, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/settings/search/SettingsSearchUtils;-><init>(Landroid/content/Context;)V

    .line 53
    .local v2, "searchUtils":Lcom/android/settings/search/SettingsSearchUtils;
    iget-object v3, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 54
    invoke-virtual {v2}, Lcom/android/settings/search/SettingsSearchUtils;->getSearchMenuInfo()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    .line 56
    iget-object v3, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mSearchManager:Lcom/android/settings/search/SettingSearchManager;

    iget-object v4, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mSearchManager:Lcom/android/settings/search/SettingSearchManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/search/SettingSearchManager;->Delete(ILjava/lang/String;)V

    .line 58
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 59
    iget-object v3, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    iget v3, v3, Lcom/android/settings/search/SearchItem$MenuInfoItem;->parentType:I

    if-nez v3, :cond_1

    .line 60
    iget-object v4, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->xmlParserHeadFile:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    iget v3, v3, Lcom/android/settings/search/SearchItem$MenuInfoItem;->fileId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 61
    iget-object v4, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->xmlParserHeadFile:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    iget v3, v3, Lcom/android/settings/search/SearchItem$MenuInfoItem;->fileId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :cond_1
    iget-object v4, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->xmlParserPreferenceFile:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    iget v3, v3, Lcom/android/settings/search/SearchItem$MenuInfoItem;->fileId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    iget-object v4, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->xmlParserPreferenceFile:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    iget v3, v3, Lcom/android/settings/search/SearchItem$MenuInfoItem;->fileId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 70
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v3, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->xmlParserHeadFile:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 71
    iget-object v3, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->xmlParserHeadFile:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/search/SettingHeaderXmlParser;->addHeaderPreferencesFromRes(I)V

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 73
    :cond_3
    const/4 v1, 0x0

    :goto_3
    iget-object v3, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->xmlParserPreferenceFile:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 74
    iget-object v3, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->xmlParserPreferenceFile:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/search/SettingHeaderXmlParser;->addPreferencesScreenFromRes(I)Z

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 82
    :cond_4
    const-string v3, "SettingHeaderXmlParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xml Preference exception count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mExceptionCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and Checking exception count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/search/SettingHeaderXmlParser;->mCheckingExceptionCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method

.method public initTitleDB()V
    .locals 18

    .prologue
    .line 89
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v11, "searchItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/search/SearchItem;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 92
    .local v3, "defaultLocale":Ljava/util/Locale;
    sget-object v15, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 93
    .local v10, "resource":Landroid/content/res/Resources;
    invoke-virtual {v10}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 94
    .local v1, "assets":Landroid/content/res/AssetManager;
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 95
    .local v8, "metrics":Landroid/util/DisplayMetrics;
    new-instance v2, Landroid/content/res/Configuration;

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    invoke-direct {v2, v15}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 96
    .local v2, "config":Landroid/content/res/Configuration;
    iput-object v3, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 97
    new-instance v4, Landroid/content/res/Resources;

    invoke-direct {v4, v1, v8, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 99
    .local v4, "defaultResources":Landroid/content/res/Resources;
    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    .line 101
    .local v7, "language":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mSearchManager:Lcom/android/settings/search/SettingSearchManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mSearchManager:Lcom/android/settings/search/SettingSearchManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v16, 0x7d0

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/android/settings/search/SettingSearchManager;->Delete(ILjava/lang/String;)V

    .line 102
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mSearchManager:Lcom/android/settings/search/SettingSearchManager;

    invoke-virtual {v15}, Lcom/android/settings/search/SettingSearchManager;->refer_settinginfo_db_for_titleinfo()Ljava/util/ArrayList;

    move-result-object v11

    .line 104
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v6, v15, :cond_4

    .line 105
    new-instance v13, Lcom/android/settings/search/SearchItem$TitleInfoItem;

    invoke-direct {v13}, Lcom/android/settings/search/SearchItem$TitleInfoItem;-><init>()V

    .line 106
    .local v13, "textInfoItem":Lcom/android/settings/search/SearchItem$TitleInfoItem;
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/settings/search/SearchItem;

    iget-object v15, v15, Lcom/android/settings/search/SearchItem;->pakageName:Ljava/lang/String;

    if-eqz v15, :cond_0

    .line 107
    sget-object v15, Lcom/android/settings/search/SettingHeaderXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 109
    .local v9, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/settings/search/SearchItem;

    iget-object v15, v15, Lcom/android/settings/search/SearchItem;->pakageName:Ljava/lang/String;

    invoke-virtual {v9, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 116
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_1
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/settings/search/SearchItem;

    iget-object v15, v15, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    iput-object v15, v13, Lcom/android/settings/search/SearchItem$TitleInfoItem;->id_key:Ljava/lang/String;

    .line 117
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/settings/search/SearchItem;

    iget-wide v15, v15, Lcom/android/settings/search/SearchItem;->titleResId:J

    long-to-int v14, v15

    .line 118
    .local v14, "titleId":I
    const/4 v15, -0x1

    if-ne v14, v15, :cond_1

    .line 119
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/settings/search/SearchItem;

    iget-object v15, v15, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    iput-object v15, v13, Lcom/android/settings/search/SearchItem$TitleInfoItem;->title:Ljava/lang/String;

    .line 123
    :goto_2
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/settings/search/SearchItem;

    iget v15, v15, Lcom/android/settings/search/SearchItem;->iconResId:I

    iput v15, v13, Lcom/android/settings/search/SearchItem$TitleInfoItem;->icon_id:I

    .line 125
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/settings/search/SearchItem;

    iget-wide v15, v15, Lcom/android/settings/search/SearchItem;->summaryResId:J

    long-to-int v12, v15

    .line 126
    .local v12, "summaryId":I
    const/4 v15, -0x1

    if-eq v12, v15, :cond_2

    .line 127
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/settings/search/SearchItem;

    iget-wide v15, v15, Lcom/android/settings/search/SearchItem;->summaryResId:J

    long-to-int v15, v15

    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v13, Lcom/android/settings/search/SearchItem$TitleInfoItem;->summary:Ljava/lang/String;

    .line 136
    :goto_3
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/settings/search/SearchItem;

    iget v15, v15, Lcom/android/settings/search/SearchItem;->menuType:I

    iput v15, v13, Lcom/android/settings/search/SearchItem$TitleInfoItem;->menuType:I

    .line 138
    iput-object v7, v13, Lcom/android/settings/search/SearchItem$TitleInfoItem;->language:Ljava/lang/String;

    .line 139
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/search/SettingHeaderXmlParser;->mSearchManager:Lcom/android/settings/search/SettingSearchManager;

    invoke-virtual {v15, v13}, Lcom/android/settings/search/SettingSearchManager;->addTextInfoDB(Lcom/android/settings/search/SearchItem$TitleInfoItem;)V

    .line 104
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 110
    .end local v12    # "summaryId":I
    .end local v14    # "titleId":I
    .restart local v9    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v5

    .line 112
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 121
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .restart local v14    # "titleId":I
    :cond_1
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/settings/search/SearchItem;

    iget-wide v15, v15, Lcom/android/settings/search/SearchItem;->titleResId:J

    long-to-int v15, v15

    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v13, Lcom/android/settings/search/SearchItem$TitleInfoItem;->title:Ljava/lang/String;

    goto :goto_2

    .line 129
    .restart local v12    # "summaryId":I
    :cond_2
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/settings/search/SearchItem;

    iget-object v15, v15, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    if-eqz v15, :cond_3

    .line 130
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/settings/search/SearchItem;

    iget-object v15, v15, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    iput-object v15, v13, Lcom/android/settings/search/SearchItem$TitleInfoItem;->summary:Ljava/lang/String;

    goto :goto_3

    .line 132
    :cond_3
    const/4 v15, 0x0

    iput-object v15, v13, Lcom/android/settings/search/SearchItem$TitleInfoItem;->summary:Ljava/lang/String;

    goto :goto_3

    .line 141
    .end local v12    # "summaryId":I
    .end local v13    # "textInfoItem":Lcom/android/settings/search/SearchItem$TitleInfoItem;
    .end local v14    # "titleId":I
    :cond_4
    return-void
.end method

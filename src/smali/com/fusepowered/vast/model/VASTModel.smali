.class public Lcom/fusepowered/vast/model/VASTModel;
.super Ljava/lang/Object;
.source "VASTModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/vast/model/VASTModel$DownloadTask;
    }
.end annotation


# static fields
.field public static final DOWNLOAD_TIMEOUT_LIMIT:J = 0x7530L

.field private static TAG:Ljava/lang/String; = null

.field private static final adSystemXPATH:Ljava/lang/String; = "/VAST/Ad/InLine/AdSystem"

.field private static final adTitleXPATH:Ljava/lang/String; = "/VAST/Ad/InLine/AdTitle"

.field private static final combinedTrackingXPATH:Ljava/lang/String; = "/VAST/Ad/InLine/Creatives/Creative/Linear/TrackingEvents/Tracking|/VAST/Ad/InLine/Creatives/Creative/NonLinearAds/TrackingEvents/Tracking|/VAST/Ad/Wrapper/Creatives/Creative/Linear/TrackingEvents/Tracking|/VAST/Ad/Wrapper/Creatives/Creative/NonLinearAds/TrackingEvents/Tracking"

.field private static final durationXPATH:Ljava/lang/String; = "/VAST/Ad/InLine/Creatives/Creative/Linear/Duration"

.field private static final errorUrlXPATH:Ljava/lang/String; = "//Error"

.field private static final impressionXPATH:Ljava/lang/String; = "/VAST/Ad/InLine/Impression"

.field private static final inlineLinearTrackingXPATH:Ljava/lang/String; = "/VAST/Ad/InLine/Creatives/Creative/Linear/TrackingEvents/Tracking"

.field private static final inlineNonLinearTrackingXPATH:Ljava/lang/String; = "/VAST/Ad/InLine/Creatives/Creative/NonLinearAds/TrackingEvents/Tracking"

.field private static final mediaFileXPATH:Ljava/lang/String; = "/VAST/Ad/InLine/Creatives/Creative/Linear/MediaFiles/MediaFile"

.field private static final serialVersionUID:J = 0x3beded0d26129615L

.field private static final skipOffsetXPATH:Ljava/lang/String; = "/VAST/Ad/InLine/Creatives/Creative/Linear[@skipoffset]"

.field private static final vastXPATH:Ljava/lang/String; = "//VAST"

.field private static final videoClicksXPATH:Ljava/lang/String; = "//VideoClicks"

.field private static final wrapperLinearTrackingXPATH:Ljava/lang/String; = "/VAST/Ad/Wrapper/Creatives/Creative/Linear/TrackingEvents/Tracking"

.field private static final wrapperNonLinearTrackingXPATH:Ljava/lang/String; = "/VAST/Ad/Wrapper/Creatives/Creative/NonLinearAds/TrackingEvents/Tracking"


# instance fields
.field private mediaFileDeliveryType:Ljava/lang/String;

.field private mediaFileLocation:Ljava/lang/String;

.field private transient vastsDocument:Lorg/w3c/dom/Document;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "VASTModel"

    sput-object v0, Lcom/fusepowered/vast/model/VASTModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 1
    .param p1, "vasts"    # Lorg/w3c/dom/Document;

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/fusepowered/vast/model/VASTModel;->mediaFileLocation:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/fusepowered/vast/model/VASTModel;->mediaFileDeliveryType:Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lcom/fusepowered/vast/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/vast/model/VASTModel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/vast/model/VASTModel;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fusepowered/vast/model/VASTModel;->mediaFileLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/fusepowered/vast/model/VASTModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/vast/model/VASTModel;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/fusepowered/vast/model/VASTModel;->mediaFileLocation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/fusepowered/vast/model/VASTModel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getListFromXPath(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "xPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v6

    .line 426
    .local v6, "xpath":Ljavax/xml/xpath/XPath;
    :try_start_0
    iget-object v7, p0, Lcom/fusepowered/vast/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    sget-object v8, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v6, p1, v7, v8}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/NodeList;

    .line 430
    .local v4, "nodes":Lorg/w3c/dom/NodeList;
    if-eqz v4, :cond_2

    .line 431
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 432
    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 433
    .local v3, "node":Lorg/w3c/dom/Node;
    invoke-static {v3}, Lcom/fusepowered/vast/util/XmlTools;->getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 434
    .local v5, "value":Ljava/lang/String;
    if-nez v5, :cond_0

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 435
    :cond_0
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 439
    .end local v1    # "i":I
    .end local v3    # "node":Lorg/w3c/dom/Node;
    .end local v4    # "nodes":Lorg/w3c/dom/NodeList;
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 444
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    return-object v2
.end method

.method private isExternalStorageWritable()Z
    .locals 2

    .prologue
    .line 308
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    const/4 v1, 0x1

    .line 312
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 460
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 462
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 465
    .local v0, "vastString":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/vast/util/XmlTools;->stringToDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/vast/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    .line 467
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 449
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 451
    iget-object v1, p0, Lcom/fusepowered/vast/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    invoke-static {v1}, Lcom/fusepowered/vast/util/XmlTools;->xmlDocumentToString(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 455
    return-void
.end method


# virtual methods
.method public cache(Landroid/content/Context;Lcom/fusepowered/vast/VASTPlayer;)I
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "vastPlayer"    # Lcom/fusepowered/vast/VASTPlayer;

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/fusepowered/vast/model/VASTModel;->isExternalStorageWritable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    const/16 v0, 0x190

    .line 303
    .end local p1    # "c":Landroid/content/Context;
    :goto_0
    return v0

    .line 295
    .restart local p1    # "c":Landroid/content/Context;
    :cond_0
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "c":Landroid/content/Context;
    new-instance v0, Lcom/fusepowered/vast/model/VASTModel$1;

    invoke-direct {v0, p0, p2}, Lcom/fusepowered/vast/model/VASTModel$1;-><init>(Lcom/fusepowered/vast/model/VASTModel;Lcom/fusepowered/vast/VASTPlayer;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 303
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public evaluateAdSystem()Z
    .locals 5

    .prologue
    .line 104
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v1

    .line 106
    .local v1, "xpath":Ljavax/xml/xpath/XPath;
    :try_start_0
    const-string v2, "/VAST/Ad/InLine/AdSystem"

    iget-object v3, p0, Lcom/fusepowered/vast/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    sget-object v4, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {v1, v2, v3, v4}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljavax/xml/xpath/XPathExpressionException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public evaluateAdTitle()Z
    .locals 5

    .prologue
    .line 114
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v1

    .line 116
    .local v1, "xpath":Ljavax/xml/xpath/XPath;
    :try_start_0
    const-string v2, "/VAST/Ad/InLine/AdTitle"

    iget-object v3, p0, Lcom/fusepowered/vast/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    sget-object v4, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {v1, v2, v3, v4}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljavax/xml/xpath/XPathExpressionException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 9

    .prologue
    .line 319
    sget-object v6, Lcom/fusepowered/vast/model/VASTModel;->TAG:Ljava/lang/String;

    const-string v7, "getDuration"

    invoke-static {v6, v7}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, "duration":Ljava/lang/String;
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v5

    .line 324
    .local v5, "xpath":Ljavax/xml/xpath/XPath;
    :try_start_0
    const-string v6, "/VAST/Ad/InLine/Creatives/Creative/Linear/Duration"

    iget-object v7, p0, Lcom/fusepowered/vast/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    sget-object v8, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v5, v6, v7, v8}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/NodeList;

    .line 328
    .local v4, "nodes":Lorg/w3c/dom/NodeList;
    if-eqz v4, :cond_0

    .line 329
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 330
    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 331
    .local v3, "node":Lorg/w3c/dom/Node;
    invoke-static {v3}, Lcom/fusepowered/vast/util/XmlTools;->getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 329
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 334
    .end local v2    # "i":I
    .end local v3    # "node":Lorg/w3c/dom/Node;
    .end local v4    # "nodes":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v1

    .line 336
    .local v1, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    .line 338
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v6

    .restart local v4    # "nodes":Lorg/w3c/dom/NodeList;
    :cond_0
    move-object v6, v0

    goto :goto_1
.end method

.method public getErrorUrl()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    const-string v1, "//Error"

    invoke-direct {p0, v1}, Lcom/fusepowered/vast/model/VASTModel;->getListFromXPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 416
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v0
.end method

.method public getImpressions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 409
    const-string v1, "/VAST/Ad/InLine/Impression"

    invoke-direct {p0, v1}, Lcom/fusepowered/vast/model/VASTModel;->getListFromXPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 410
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v0
.end method

.method public getMediaFiles()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/vast/model/VASTMediaFile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 214
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v5, "mediaFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/vast/model/VASTMediaFile;>;"
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v11

    invoke-virtual {v11}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v9

    .line 219
    .local v9, "xpath":Ljavax/xml/xpath/XPath;
    :try_start_0
    const-string v11, "/VAST/Ad/InLine/Creatives/Creative/Linear/MediaFiles/MediaFile"

    iget-object v12, p0, Lcom/fusepowered/vast/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    sget-object v13, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v9, v11, v12, v13}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/NodeList;

    .line 226
    .local v8, "nodes":Lorg/w3c/dom/NodeList;
    if-eqz v8, :cond_2

    .line 227
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v3, v11, :cond_2

    .line 228
    new-instance v4, Lcom/fusepowered/vast/model/VASTMediaFile;

    invoke-direct {v4}, Lcom/fusepowered/vast/model/VASTMediaFile;-><init>()V

    .line 229
    .local v4, "mediaFile":Lcom/fusepowered/vast/model/VASTMediaFile;
    invoke-interface {v8, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 230
    .local v7, "node":Lorg/w3c/dom/Node;
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 232
    .local v1, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v11, "apiFramework"

    invoke-interface {v1, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 233
    .local v0, "attributeNode":Lorg/w3c/dom/Node;
    if-nez v0, :cond_0

    move-object v11, v10

    :goto_1
    invoke-virtual {v4, v11}, Lcom/fusepowered/vast/model/VASTMediaFile;->setApiFramework(Ljava/lang/String;)V

    .line 236
    const-string v11, "bitrate"

    invoke-interface {v1, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 237
    if-nez v0, :cond_1

    move-object v11, v10

    :goto_2
    invoke-virtual {v4, v11}, Lcom/fusepowered/vast/model/VASTMediaFile;->setBitrate(Ljava/math/BigInteger;)V

    .line 240
    const-string v11, "delivery"

    invoke-interface {v1, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 241
    if-nez v0, :cond_3

    move-object v11, v10

    :goto_3
    invoke-virtual {v4, v11}, Lcom/fusepowered/vast/model/VASTMediaFile;->setDelivery(Ljava/lang/String;)V

    .line 244
    const-string v11, "height"

    invoke-interface {v1, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 245
    if-nez v0, :cond_4

    move-object v11, v10

    :goto_4
    invoke-virtual {v4, v11}, Lcom/fusepowered/vast/model/VASTMediaFile;->setHeight(Ljava/math/BigInteger;)V

    .line 248
    const-string v11, "id"

    invoke-interface {v1, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 249
    if-nez v0, :cond_5

    move-object v11, v10

    :goto_5
    invoke-virtual {v4, v11}, Lcom/fusepowered/vast/model/VASTMediaFile;->setId(Ljava/lang/String;)V

    .line 252
    const-string v11, "maintainAspectRatio"

    invoke-interface {v1, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 254
    if-nez v0, :cond_6

    move-object v11, v10

    :goto_6
    invoke-virtual {v4, v11}, Lcom/fusepowered/vast/model/VASTMediaFile;->setMaintainAspectRatio(Ljava/lang/Boolean;)V

    .line 259
    const-string v11, "scalable"

    invoke-interface {v1, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 260
    if-nez v0, :cond_7

    move-object v11, v10

    :goto_7
    invoke-virtual {v4, v11}, Lcom/fusepowered/vast/model/VASTMediaFile;->setScalable(Ljava/lang/Boolean;)V

    .line 263
    const-string v11, "type"

    invoke-interface {v1, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 264
    if-nez v0, :cond_8

    move-object v11, v10

    :goto_8
    invoke-virtual {v4, v11}, Lcom/fusepowered/vast/model/VASTMediaFile;->setType(Ljava/lang/String;)V

    .line 267
    const-string v11, "width"

    invoke-interface {v1, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 268
    if-nez v0, :cond_9

    move-object v11, v10

    :goto_9
    invoke-virtual {v4, v11}, Lcom/fusepowered/vast/model/VASTMediaFile;->setWidth(Ljava/math/BigInteger;)V

    .line 271
    invoke-static {v7}, Lcom/fusepowered/vast/util/XmlTools;->getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    .line 272
    .local v6, "mediaURL":Ljava/lang/String;
    invoke-virtual {v4, v6}, Lcom/fusepowered/vast/model/VASTMediaFile;->setValue(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 233
    .end local v6    # "mediaURL":Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 237
    :cond_1
    new-instance v11, Ljava/math/BigInteger;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 277
    .end local v0    # "attributeNode":Lorg/w3c/dom/Node;
    .end local v1    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v3    # "i":I
    .end local v4    # "mediaFile":Lcom/fusepowered/vast/model/VASTMediaFile;
    .end local v7    # "node":Lorg/w3c/dom/Node;
    .end local v8    # "nodes":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    move-object v5, v10

    .line 281
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "mediaFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/vast/model/VASTMediaFile;>;"
    :cond_2
    return-object v5

    .line 241
    .restart local v0    # "attributeNode":Lorg/w3c/dom/Node;
    .restart local v1    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .restart local v3    # "i":I
    .restart local v4    # "mediaFile":Lcom/fusepowered/vast/model/VASTMediaFile;
    .restart local v5    # "mediaFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/vast/model/VASTMediaFile;>;"
    .restart local v7    # "node":Lorg/w3c/dom/Node;
    .restart local v8    # "nodes":Lorg/w3c/dom/NodeList;
    :cond_3
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    .line 245
    :cond_4
    new-instance v11, Ljava/math/BigInteger;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 249
    :cond_5
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    .line 254
    :cond_6
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_6

    .line 260
    :cond_7
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_7

    .line 264
    :cond_8
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    goto :goto_8

    .line 268
    :cond_9
    new-instance v11, Ljava/math/BigInteger;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9
.end method

.method public getPickedMediaFileDeliveryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/fusepowered/vast/model/VASTModel;->mediaFileDeliveryType:Ljava/lang/String;

    return-object v0
.end method

.method public getPickedMediaFileLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/fusepowered/vast/model/VASTModel;->mediaFileLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getSkipOffset()Ljava/lang/String;
    .locals 7

    .prologue
    .line 345
    const/4 v2, 0x0

    .line 347
    .local v2, "skipOffset":Ljava/lang/String;
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v3

    .line 350
    .local v3, "xpath":Ljavax/xml/xpath/XPath;
    :try_start_0
    const-string v4, "/VAST/Ad/InLine/Creatives/Creative/Linear[@skipoffset]"

    iget-object v5, p0, Lcom/fusepowered/vast/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    sget-object v6, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {v3, v4, v5, v6}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    .line 351
    .local v1, "node":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    const-string v5, "skipoffset"

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v4, v2

    .line 356
    .end local v1    # "node":Lorg/w3c/dom/Node;
    :goto_0
    return-object v4

    .line 352
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getTrackingEvents()Ljava/util/HashMap;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/vast/model/VASTTracking;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 145
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 147
    .local v12, "trackings":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;Ljava/util/List<Lcom/fusepowered/vast/model/VASTTracking;>;>;"
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v15

    invoke-virtual {v15}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v14

    .line 150
    .local v14, "xpath":Ljavax/xml/xpath/XPath;
    :try_start_0
    const-string v15, "/VAST/Ad/InLine/Creatives/Creative/Linear/TrackingEvents/Tracking|/VAST/Ad/InLine/Creatives/Creative/NonLinearAds/TrackingEvents/Tracking|/VAST/Ad/Wrapper/Creatives/Creative/Linear/TrackingEvents/Tracking|/VAST/Ad/Wrapper/Creatives/Creative/NonLinearAds/TrackingEvents/Tracking"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/vast/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    move-object/from16 v16, v0

    sget-object v17, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface/range {v14 .. v17}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/NodeList;

    .line 155
    .local v7, "nodes":Lorg/w3c/dom/NodeList;
    const-string v9, ""

    .line 156
    .local v9, "progressOffset":Ljava/lang/String;
    const/4 v5, 0x0

    .line 158
    .local v5, "key":Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;
    if-eqz v7, :cond_3

    .line 159
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-ge v4, v15, :cond_3

    .line 160
    invoke-interface {v7, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 161
    .local v6, "node":Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 163
    .local v1, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v15, "event"

    invoke-interface {v1, v15}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "eventName":Ljava/lang/String;
    const-string v15, "progress"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v15

    if-eqz v15, :cond_0

    .line 169
    :try_start_1
    const-string v15, "offset"

    invoke-interface {v1, v15}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v9

    .line 175
    :cond_0
    :goto_1
    :try_start_2
    invoke-static {v3}, Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;->valueOf(Ljava/lang/String;)Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    .line 181
    :try_start_3
    invoke-static {v6}, Lcom/fusepowered/vast/util/XmlTools;->getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    .line 184
    .local v11, "trackingURL":Ljava/lang/String;
    new-instance v13, Lcom/fusepowered/vast/model/VASTTracking;

    invoke-direct {v13}, Lcom/fusepowered/vast/model/VASTTracking;-><init>()V

    .line 185
    .local v13, "vastTracking":Lcom/fusepowered/vast/model/VASTTracking;
    invoke-virtual {v13, v5}, Lcom/fusepowered/vast/model/VASTTracking;->setEvent(Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;)V

    .line 186
    invoke-virtual {v13, v11}, Lcom/fusepowered/vast/model/VASTTracking;->setValue(Ljava/lang/String;)V

    .line 189
    sget-object v15, Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;->progress:Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;

    invoke-virtual {v5, v15}, Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    if-eqz v9, :cond_1

    .line 190
    invoke-virtual {v13, v9}, Lcom/fusepowered/vast/model/VASTTracking;->setOffset(Ljava/lang/String;)V

    .line 194
    :cond_1
    invoke-virtual {v12, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 195
    invoke-virtual {v12, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 196
    .local v10, "tracking":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/vast/model/VASTTracking;>;"
    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    .end local v10    # "tracking":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/vast/model/VASTTracking;>;"
    .end local v11    # "trackingURL":Ljava/lang/String;
    .end local v13    # "vastTracking":Lcom/fusepowered/vast/model/VASTTracking;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 170
    :catch_0
    move-exception v8

    .line 171
    .local v8, "npe":Ljava/lang/NullPointerException;
    const/4 v9, 0x0

    goto :goto_1

    .line 176
    .end local v8    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 178
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_2

    .line 198
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v11    # "trackingURL":Ljava/lang/String;
    .restart local v13    # "vastTracking":Lcom/fusepowered/vast/model/VASTTracking;
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .restart local v10    # "tracking":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/vast/model/VASTTracking;>;"
    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-virtual {v12, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 204
    .end local v1    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v3    # "eventName":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "key":Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;
    .end local v6    # "node":Lorg/w3c/dom/Node;
    .end local v7    # "nodes":Lorg/w3c/dom/NodeList;
    .end local v9    # "progressOffset":Ljava/lang/String;
    .end local v10    # "tracking":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/vast/model/VASTTracking;>;"
    .end local v11    # "trackingURL":Ljava/lang/String;
    .end local v13    # "vastTracking":Lcom/fusepowered/vast/model/VASTTracking;
    :catch_2
    move-exception v2

    .line 206
    .local v2, "e":Ljava/lang/Exception;
    const/4 v12, 0x0

    .line 208
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v12    # "trackings":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;Ljava/util/List<Lcom/fusepowered/vast/model/VASTTracking;>;>;"
    :cond_3
    return-object v12
.end method

.method public getVastVersion()Ljava/lang/String;
    .locals 7

    .prologue
    .line 128
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v3

    .line 130
    .local v3, "xpath":Ljavax/xml/xpath/XPath;
    :try_start_0
    const-string v4, "//VAST"

    iget-object v5, p0, Lcom/fusepowered/vast/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    sget-object v6, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {v3, v4, v5, v6}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    .line 131
    .local v1, "node":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    const-string v5, "version"

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 135
    .end local v1    # "node":Lorg/w3c/dom/Node;
    :goto_0
    return-object v2

    .line 133
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getVideoClicks()Lcom/fusepowered/vast/model/VideoClicks;
    .locals 14

    .prologue
    .line 362
    new-instance v9, Lcom/fusepowered/vast/model/VideoClicks;

    invoke-direct {v9}, Lcom/fusepowered/vast/model/VideoClicks;-><init>()V

    .line 363
    .local v9, "videoClicks":Lcom/fusepowered/vast/model/VideoClicks;
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v11

    invoke-virtual {v11}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v10

    .line 365
    .local v10, "xpath":Ljavax/xml/xpath/XPath;
    :try_start_0
    const-string v11, "//VideoClicks"

    iget-object v12, p0, Lcom/fusepowered/vast/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    sget-object v13, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v10, v11, v12, v13}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/NodeList;

    .line 369
    .local v7, "nodes":Lorg/w3c/dom/NodeList;
    if-eqz v7, :cond_2

    .line 370
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v4, v11, :cond_2

    .line 371
    invoke-interface {v7, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 373
    .local v5, "node":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 376
    .local v2, "childNodes":Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .line 378
    .local v8, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "childIndex":I
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v1, v11, :cond_4

    .line 381
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 382
    .local v0, "child":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    .line 384
    .local v6, "nodeName":Ljava/lang/String;
    const-string v11, "ClickTracking"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 385
    invoke-static {v0}, Lcom/fusepowered/vast/util/XmlTools;->getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    .line 386
    invoke-virtual {v9}, Lcom/fusepowered/vast/model/VideoClicks;->getClickTracking()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 388
    :cond_1
    const-string v11, "ClickThrough"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 389
    invoke-static {v0}, Lcom/fusepowered/vast/util/XmlTools;->getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    .line 390
    invoke-virtual {v9, v8}, Lcom/fusepowered/vast/model/VideoClicks;->setClickThrough(Ljava/lang/String;)V

    goto :goto_2

    .line 400
    .end local v0    # "child":Lorg/w3c/dom/Node;
    .end local v1    # "childIndex":I
    .end local v2    # "childNodes":Lorg/w3c/dom/NodeList;
    .end local v4    # "i":I
    .end local v5    # "node":Lorg/w3c/dom/Node;
    .end local v6    # "nodeName":Ljava/lang/String;
    .end local v7    # "nodes":Lorg/w3c/dom/NodeList;
    .end local v8    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 402
    .local v3, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    .line 404
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v9    # "videoClicks":Lcom/fusepowered/vast/model/VideoClicks;
    :cond_2
    return-object v9

    .line 392
    .restart local v0    # "child":Lorg/w3c/dom/Node;
    .restart local v1    # "childIndex":I
    .restart local v2    # "childNodes":Lorg/w3c/dom/NodeList;
    .restart local v4    # "i":I
    .restart local v5    # "node":Lorg/w3c/dom/Node;
    .restart local v6    # "nodeName":Ljava/lang/String;
    .restart local v7    # "nodes":Lorg/w3c/dom/NodeList;
    .restart local v8    # "value":Ljava/lang/String;
    .restart local v9    # "videoClicks":Lcom/fusepowered/vast/model/VideoClicks;
    :cond_3
    const-string v11, "CustomClick"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 393
    invoke-static {v0}, Lcom/fusepowered/vast/util/XmlTools;->getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    .line 394
    invoke-virtual {v9}, Lcom/fusepowered/vast/model/VideoClicks;->getCustomClick()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 370
    .end local v0    # "child":Lorg/w3c/dom/Node;
    .end local v6    # "nodeName":Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public setPickedMediaFileDeliveryType(Ljava/lang/String;)V
    .locals 0
    .param p1, "deliveryType"    # Ljava/lang/String;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/fusepowered/vast/model/VASTModel;->mediaFileDeliveryType:Ljava/lang/String;

    .line 482
    return-void
.end method

.method public setPickedMediaFileLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "mediaFileLocation"    # Ljava/lang/String;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/fusepowered/vast/model/VASTModel;->mediaFileLocation:Ljava/lang/String;

    .line 472
    return-void
.end method

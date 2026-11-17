.class public Lcom/chillingo/liboffers/gui/OfferGuiImpl;
.super Ljava/lang/Object;
.source "OfferGuiImpl.java"

# interfaces
.implements Lcom/chillingo/liboffers/partnerapi/OfferGui;
.implements Lcom/chillingo/liboffers/gui/renderer/ViewControllerDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/liboffers/gui/OfferGuiImpl$OfferGuiBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final BUBBLE_AUTORELEASE_FIRSTBUBBLE_MINIMUM_DELAYTIME:D = 0.5

.field private static final BUBBLE_AUTORELEASE_TIME:D = 1.1

.field private static final BUBBLE_RELEASE_TIME:D = 5.0

.field private static final DEFAULT_MAXIMUM_NUMBEROFBUBBLES_TAP_TO_RELEASE:Ljava/lang/Integer;

.field private static final DEFAULT_MAXIMUM_NUMBEROFBUBBLES_TO_DISPLAY:Ljava/lang/Integer;

.field private static final LOG_TAG:Ljava/lang/String; = "OffersGUI"


# instance fields
.field private context:Landroid/content/Context;

.field private cornerBubbleVisible:Z

.field private cornerToDisplayFrom:Lcom/chillingo/liboffers/OfferSession$OffersCorner;

.field private deactivationListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/chillingo/liboffers/partnerapi/OfferGuiDeactivateListener;",
            ">;"
        }
    .end annotation
.end field

.field private frameInterval:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

.field private offerConfig:Lcom/chillingo/liboffers/model/OfferConfig;

.field private offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

.field private offerGuiSession:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;",
            ">;"
        }
    .end annotation
.end field

.field private offerGuiTelemetryHandler:Lcom/chillingo/liboffers/partnerapi/OfferGuiTelemetryHandler;

.field private offerInitialisationData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private offersReleaseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private receiver:Lcom/chillingo/liboffers/gui/OfferGuiImpl$OfferGuiBroadcastReceiver;

.field private updateMethod:Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->DEFAULT_MAXIMUM_NUMBEROFBUBBLES_TO_DISPLAY:Ljava/lang/Integer;

    .line 56
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->DEFAULT_MAXIMUM_NUMBEROFBUBBLES_TAP_TO_RELEASE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGuiSession:Ljava/lang/ref/WeakReference;

    .line 64
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->deactivationListener:Ljava/lang/ref/WeakReference;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offersReleaseList:Ljava/util/List;

    .line 143
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->context:Landroid/content/Context;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/chillingo/liboffers/gui/OfferGuiImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/chillingo/liboffers/gui/OfferGuiImpl;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->determineIfAnyOffersShouldBeDisplayed()V

    return-void
.end method

.method private addOfferGUIViewToActivity(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 509
    const-string v0, "OffersGUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOfferGUIViewToActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v4}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;ZZ)I

    .line 511
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v0, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    check-cast v0, Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 512
    return-void
.end method

.method private attemptReleaseOfAutoReleaseOffers(Ljava/lang/Integer;)D
    .locals 8
    .param p1, "numberOfOffersToRelease"    # Ljava/lang/Integer;

    .prologue
    const-wide v6, 0x3ff199999999999aL    # 1.1

    .line 928
    invoke-direct {p0, v6, v7}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->calculateDelayTimeForRelease(D)D

    move-result-wide v0

    .line 931
    .local v0, "delayTime":D
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v4

    .line 933
    const/4 v2, 0x0

    .local v2, "tmp":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 935
    invoke-direct {p0, v0, v1}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->attemptReleaseOfAutoReleasedOfferAfterDelay(D)V

    .line 937
    add-double/2addr v0, v6

    .line 933
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 940
    :cond_0
    return-wide v0
.end method

.method private attemptReleaseOfAutoReleasedOfferAfterDelay(D)V
    .locals 5
    .param p1, "delayTime"    # D

    .prologue
    const/4 v3, 0x0

    .line 946
    const-string v0, "OffersGUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to release auto-release offer with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds delay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    invoke-direct {p0, v3}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->canReleaseOfferAsCornerTap(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 949
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->releaseNextOfferAsCornerTap(Ljava/lang/Boolean;D)V

    .line 952
    :goto_0
    return-void

    .line 951
    :cond_0
    const-string v0, "OffersGUI"

    const-string v1, "Unable to release auto-release offer yet"

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private attemptReleaseOfCornerTapOfferAfterDelay(D)V
    .locals 5
    .param p1, "delayTime"    # D

    .prologue
    const/4 v3, 0x1

    .line 956
    const-string v0, "OffersGUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to release corner tap offer with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds delay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    invoke-direct {p0, v3}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->canReleaseOfferAsCornerTap(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 959
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->releaseNextOfferAsCornerTap(Ljava/lang/Boolean;D)V

    .line 962
    :goto_0
    return-void

    .line 961
    :cond_0
    const-string v0, "OffersGUI"

    const-string v1, "Unable to release corner tap offer yet"

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private buildOffersReleasedFilterArray()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1037
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offersReleaseList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1039
    .local v3, "offersReleased":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offersReleaseList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1041
    .local v0, "dict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "offer"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chillingo/liboffers/model/Offer;

    .line 1043
    .local v2, "offer":Lcom/chillingo/liboffers/model/Offer;
    if-eqz v2, :cond_0

    .line 1044
    invoke-virtual {v2}, Lcom/chillingo/liboffers/model/Offer;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1047
    .end local v0    # "dict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "offer":Lcom/chillingo/liboffers/model/Offer;
    :cond_1
    return-object v3
.end method

.method private calculateDelayTimeForRelease(D)D
    .locals 19
    .param p1, "defaultReleaseTime"    # D

    .prologue
    .line 811
    const-wide/16 v4, 0x0

    .line 813
    .local v4, "delayTime":D
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offersReleaseList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 814
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offersReleaseList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offersReleaseList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 816
    .local v3, "lastReleaseData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v3, :cond_0

    .line 818
    const-string v9, "timestamp"

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Date;

    .line 819
    .local v8, "releaseTimestamp":Ljava/util/Date;
    const-string v9, "delay"

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 822
    .local v6, "delayTimeinSeconds":D
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 824
    .local v2, "currentTimeStamp":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    sub-long v14, v14, v16

    long-to-double v10, v14

    .line 826
    .local v10, "timeSinceLastReleaseMillisecs":D
    const-wide v14, 0x408f400000000000L    # 1000.0

    div-double v12, v10, v14

    .line 828
    .local v12, "timeSinceLastReleaseSecs":D
    const-string v9, "OffersGUI"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Time since last release: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    add-double v14, v6, p1

    cmpl-double v9, v12, v14

    if-lez v9, :cond_1

    .line 832
    const-wide/16 v4, 0x0

    .line 842
    .end local v2    # "currentTimeStamp":Ljava/util/Date;
    .end local v3    # "lastReleaseData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "delayTimeinSeconds":D
    .end local v8    # "releaseTimestamp":Ljava/util/Date;
    .end local v10    # "timeSinceLastReleaseMillisecs":D
    .end local v12    # "timeSinceLastReleaseSecs":D
    :cond_0
    :goto_0
    return-wide v4

    .line 836
    .restart local v2    # "currentTimeStamp":Ljava/util/Date;
    .restart local v3    # "lastReleaseData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v6    # "delayTimeinSeconds":D
    .restart local v8    # "releaseTimestamp":Ljava/util/Date;
    .restart local v10    # "timeSinceLastReleaseMillisecs":D
    .restart local v12    # "timeSinceLastReleaseSecs":D
    :cond_1
    add-double v14, v6, p1

    sub-double v4, v14, v12

    goto :goto_0
.end method

.method private canReleaseOfferAsCornerTap(Z)Z
    .locals 4
    .param p1, "cornerTap"    # Z

    .prologue
    .line 969
    const/4 v0, 0x0

    .line 972
    .local v0, "canReleaseOffer":Z
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    invoke-interface {v2}, Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;->numberOfBubblesActive()I

    move-result v1

    .line 974
    .local v1, "numberOfBubblesActive":I
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->maximumNumberOfOffersToDisplay()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 977
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUISessionOfferDataAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 979
    if-nez p1, :cond_0

    .line 980
    const/4 v0, 0x1

    .line 999
    :goto_0
    return v0

    .line 983
    :cond_0
    iget-boolean v2, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->cornerBubbleVisible:Z

    if-nez v2, :cond_1

    .line 984
    const/4 v0, 0x1

    goto :goto_0

    .line 986
    :cond_1
    const-string v2, "OffersGUI"

    const-string v3, "Corner offer already visible when trying to release another corner tap offer"

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 991
    :cond_2
    const-string v2, "OffersGUI"

    const-string v3, "No more offers to display when trying to release"

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 996
    :cond_3
    const-string v2, "OffersGUI"

    const-string v3, "Max number of offers to display reached when trying to release"

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createOfferGUIViewControllerInstance(Landroid/app/Activity;)Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 486
    new-instance v0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private determineIfAnyOffersShouldBeDisplayed()V
    .locals 11

    .prologue
    .line 848
    const-string v8, "OffersGUI"

    const-string v9, "determineIfAnyOffersShouldBeDisplayed"

    invoke-static {v8, v9}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iget-object v8, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    if-nez v8, :cond_1

    .line 851
    const-string v8, "OffersGUI"

    const-string v9, "No view controller setup when trying to determine if any bubbles should be displayed"

    invoke-static {v8, v9}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_0
    :goto_0
    return-void

    .line 859
    :cond_1
    :try_start_0
    iget-object v8, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    invoke-interface {v8}, Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;->numberOfBubblesActive()I

    move-result v4

    .line 861
    .local v4, "numberOfBubblesActive":I
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->maximumNumberOfOffersToDisplay()I

    move-result v8

    if-ge v4, v8, :cond_5

    .line 863
    iget-object v8, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offersReleaseList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    .line 865
    .local v6, "numberOfBubblesReleased":I
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->numberOfOffersToAutoRelease()I

    move-result v8

    sub-int v5, v8, v6

    .line 867
    .local v5, "numberOfBubblesLeftToAutorelease":I
    if-lez v5, :cond_3

    .line 869
    const/4 v0, 0x1

    .line 871
    .local v0, "attemptReleaseOfOffers":Z
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->releaseOffersInOrder()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 872
    invoke-direct {p0, v5}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUISessionAreOffersAvailableAndReadyInOrderWithCount(I)Z

    move-result v0

    .line 874
    :cond_2
    if-eqz v0, :cond_0

    .line 876
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->attemptReleaseOfAutoReleaseOffers(Ljava/lang/Integer;)D

    .line 879
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 880
    .local v1, "handler":Landroid/os/Handler;
    new-instance v8, Lcom/chillingo/liboffers/gui/OfferGuiImpl$4;

    invoke-direct {v8, p0}, Lcom/chillingo/liboffers/gui/OfferGuiImpl$4;-><init>(Lcom/chillingo/liboffers/gui/OfferGuiImpl;)V

    invoke-virtual {v1, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 918
    .end local v0    # "attemptReleaseOfOffers":Z
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v4    # "numberOfBubblesActive":I
    .end local v5    # "numberOfBubblesLeftToAutorelease":I
    .end local v6    # "numberOfBubblesReleased":I
    :catch_0
    move-exception v7

    .line 920
    .local v7, "throwable":Ljava/lang/Throwable;
    const-string v8, "OffersGUI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception occurred when trying to determine the next offers to show - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 899
    .end local v7    # "throwable":Ljava/lang/Throwable;
    .restart local v4    # "numberOfBubblesActive":I
    .restart local v5    # "numberOfBubblesLeftToAutorelease":I
    .restart local v6    # "numberOfBubblesReleased":I
    :cond_3
    const/4 v0, 0x1

    .line 901
    .restart local v0    # "attemptReleaseOfOffers":Z
    :try_start_1
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->releaseOffersInOrder()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 902
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUISessionAreOffersAvailableAndReadyInOrderWithCount(I)Z

    move-result v0

    .line 904
    :cond_4
    if-eqz v0, :cond_0

    .line 907
    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    invoke-direct {p0, v8, v9}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->calculateDelayTimeForRelease(D)D

    move-result-wide v2

    .line 909
    .local v2, "delayTime":D
    invoke-direct {p0, v2, v3}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->attemptReleaseOfCornerTapOfferAfterDelay(D)V

    goto :goto_0

    .line 915
    .end local v0    # "attemptReleaseOfOffers":Z
    .end local v2    # "delayTime":D
    .end local v5    # "numberOfBubblesLeftToAutorelease":I
    .end local v6    # "numberOfBubblesReleased":I
    :cond_5
    const-string v8, "OffersGUI"

    const-string v9, "Max number of offers to display reached"

    invoke-static {v8, v9}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private findOfferGUIView(Landroid/app/Activity;)Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleView;
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 491
    const/4 v2, 0x0

    .line 494
    .local v2, "existingView":Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleView;
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "ChillingoBubbleView"

    const-string v6, "id"

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 495
    .local v3, "id":I
    invoke-virtual {p1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleView;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    .end local v3    # "id":I
    :goto_0
    return-object v2

    .line 498
    :catch_0
    move-exception v1

    .line 499
    .local v1, "e":Ljava/lang/Throwable;
    const-string v4, "OffersGUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occurred whilst checking for View in layout: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private findOfferGUIViewController(Landroid/app/Activity;)Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 469
    const/4 v2, 0x0

    .line 473
    .local v2, "existingViewController":Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "ChillingoBubbleViewController"

    const-string v6, "id"

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 474
    .local v3, "id":I
    invoke-virtual {p1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    .end local v3    # "id":I
    :goto_0
    return-object v2

    .line 476
    :catch_0
    move-exception v1

    .line 477
    .local v1, "e":Ljava/lang/Throwable;
    const-string v4, "OffersGUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occurred whilst checking for ViewController in layout: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chillingo/liboffers/utils/OffersLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private loadOfferInitialisationData()V
    .locals 5

    .prologue
    .line 712
    :try_start_0
    const-string v1, "data/layout"

    .line 714
    .local v1, "subdirectory":Ljava/lang/String;
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/chillingo/liboffers/utils/DeviceUtils;->isRunningOnTabletDevice(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 715
    const-string v1, "data/layout-large"

    .line 720
    :cond_0
    const-string v2, "bubble.xml"

    invoke-direct {p0, v2, v1}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerInitialisationDataFromFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerInitialisationData:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    .end local v1    # "subdirectory":Ljava/lang/String;
    :goto_0
    return-void

    .line 722
    :catch_0
    move-exception v0

    .line 723
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Offers"

    const-string v3, "Failed to load initialisation data from theme"

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const-string v2, "Offers"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private offerGUISessionAreOffersAvailableAndReadyInOrderWithCount(I)Z
    .locals 3
    .param p1, "numberOfOffersToTest"    # I

    .prologue
    .line 1181
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->buildOffersReleasedFilterArray()Ljava/util/ArrayList;

    move-result-object v1

    .line 1183
    .local v1, "offersReleased":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGuiSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;

    .line 1185
    .local v0, "guiSession":Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;
    if-eqz v0, :cond_0

    .line 1186
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;->areOffersWithCountReadyInOrder(Ljava/lang/Integer;Ljava/util/ArrayList;)Z

    move-result v2

    .line 1188
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private offerGUISessionHasOfferBeenDisplayed(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "offerId"    # Ljava/lang/String;

    .prologue
    .line 1135
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGuiSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;

    .line 1137
    .local v0, "guiSession":Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;
    if-eqz v0, :cond_0

    .line 1138
    invoke-interface {v0, p1}, Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;->hasOfferBeenDisplayed(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1140
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method private offerGUISessionNextOfferDataFromListUsingFilter(Ljava/util/ArrayList;)Lcom/chillingo/liboffers/model/Offer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/chillingo/liboffers/model/Offer;"
        }
    .end annotation

    .prologue
    .line 1157
    .local p1, "offersReleased":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1159
    .local v1, "serverOfferData":Lcom/chillingo/liboffers/model/Offer;
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGuiSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;

    .line 1161
    .local v0, "guiSession":Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;
    if-eqz v0, :cond_0

    .line 1162
    invoke-interface {v0, p1}, Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;->nextOfferDataFromListUsingFilter(Ljava/util/ArrayList;)Lcom/chillingo/liboffers/model/Offer;

    move-result-object v1

    .line 1164
    :cond_0
    return-object v1
.end method

.method private offerGUISessionOfferDataAvailable()Z
    .locals 2

    .prologue
    .line 1170
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGuiSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;

    .line 1172
    .local v0, "guiSession":Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;
    if-eqz v0, :cond_0

    .line 1173
    invoke-interface {v0}, Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;->offerDataAvailable()Z

    move-result v1

    .line 1175
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private offerGUISessionRemainingNewOffersToDisplay()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 1146
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGuiSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;

    .line 1148
    .local v0, "guiSession":Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;
    if-eqz v0, :cond_0

    .line 1149
    invoke-interface {v0}, Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;->remainingNewOffersToDisplay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1151
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method private offerInitialisationDataFromFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .param p1, "asset"    # Ljava/lang/String;
    .param p2, "subdirectory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 731
    invoke-static {}, Lcom/chillingo/liboffers/gui/theme/ThemeManager;->getInstance()Lcom/chillingo/liboffers/gui/theme/ThemeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/liboffers/gui/theme/ThemeManager;->activeTheme()Lcom/chillingo/liboffers/gui/theme/Theme;

    move-result-object v0

    .line 733
    .local v0, "theme":Lcom/chillingo/liboffers/gui/theme/Theme;
    if-nez v0, :cond_0

    .line 734
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to get active bundle when trying to load offer initialisation data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 736
    :cond_0
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, v1, p2}, Lcom/chillingo/liboffers/gui/theme/Theme;->hashMapWithContentsOfXMLFile(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    return-object v1
.end method

.method private releaseNextOfferAsCornerTap(Ljava/lang/Boolean;D)V
    .locals 8
    .param p1, "cornerTap"    # Ljava/lang/Boolean;
    .param p2, "delayTime"    # D

    .prologue
    .line 1005
    const-string v4, "OffersGUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Releasing offer: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->buildOffersReleasedFilterArray()Ljava/util/ArrayList;

    move-result-object v1

    .line 1009
    .local v1, "offersReleased":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v1}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUISessionNextOfferDataFromListUsingFilter(Ljava/util/ArrayList;)Lcom/chillingo/liboffers/model/Offer;

    move-result-object v2

    .line 1011
    .local v2, "serverOfferData":Lcom/chillingo/liboffers/model/Offer;
    if-eqz v2, :cond_1

    .line 1013
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {p0, v2, p2, p3, v4}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->releaseOffer(Lcom/chillingo/liboffers/model/Offer;DZ)V

    .line 1015
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 1017
    .local v3, "timestamp":Ljava/util/Date;
    new-instance v0, Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 1019
    .local v0, "offerReleaseData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "offer"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    const-string v4, "timestamp"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    const-string v4, "delay"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    iget-object v4, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offersReleaseList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1025
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1026
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->cornerBubbleVisible:Z

    .line 1032
    .end local v0    # "offerReleaseData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "timestamp":Ljava/util/Date;
    :cond_0
    :goto_0
    return-void

    .line 1030
    :cond_1
    const-string v4, "OffersGUI"

    const-string v5, "Offer data available but no offer ready for release"

    invoke-static {v4, v5}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private releaseOffer(Lcom/chillingo/liboffers/model/Offer;DZ)V
    .locals 4
    .param p1, "serverOfferData"    # Lcom/chillingo/liboffers/model/Offer;
    .param p2, "delayTime"    # D
    .param p4, "cornerTap"    # Z

    .prologue
    .line 1053
    const-string v2, "OffersGUI"

    const-string v3, "releaseOffer"

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerInitialisationData:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1058
    .local v1, "initialisationData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p4, :cond_0

    .line 1059
    const-string v2, "tapToRelease"

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    :cond_0
    const-string v2, "introDelayTime"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    const-string v2, "corner"

    iget-object v3, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->cornerToDisplayFrom:Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    const-string v2, "sizeScaleFactor"

    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->sizeScaleFactor()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    const-string v2, "cornerOffsetScaleFactor"

    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->cornerOffsetScaleFactor()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    const-string v2, "guiSession"

    iget-object v3, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGuiSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    const-string v2, "telemetryHandler"

    iget-object v3, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGuiTelemetryHandler:Lcom/chillingo/liboffers/partnerapi/OfferGuiTelemetryHandler;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    invoke-interface {v2, p1, v1}, Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;->updateBubbleViewForOffer(Lcom/chillingo/liboffers/model/Offer;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1085
    .end local v1    # "initialisationData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 1081
    :catch_0
    move-exception v0

    .line 1082
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "OffersGUI"

    const-string v3, "Error when trying to release the next offer"

    invoke-static {v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private removeBadgeNotification()V
    .locals 1

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    invoke-interface {v0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;->removeBadgeNotification()V

    .line 1093
    return-void
.end method

.method private setupOfferInitialisationData()V
    .locals 0

    .prologue
    .line 612
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->setupOfferInitialisationDataWithDefaults()V

    .line 615
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->loadOfferInitialisationData()V

    .line 619
    return-void
.end method

.method private setupOfferInitialisationDataWithDefaults()V
    .locals 4

    .prologue
    const/high16 v3, 0x40a00000    # 5.0f

    .line 624
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 626
    .local v0, "initialisationData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "image"

    const-string v2, "bubble_bg.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    const-string v1, "reflection"

    const-string v2, "bubble_fg.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    const-string v1, "popSprayImage"

    const-string v2, "pop_particle.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    const-string v1, "popSplashImage"

    const-string v2, "pop_splash.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    const-string v1, "cornerHighlightImage"

    const-string v2, "bubble_highlight.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    const-string v1, "reflectionsEnabled"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    const-string v1, "size"

    const/high16 v2, 0x43000000    # 128.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    const-string v1, "speed"

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    const-string v1, "rotationRateZ"

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    const-string v1, "releaseSpeed"

    const/high16 v2, 0x447a0000    # 1000.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    const-string v1, "releaseAngle"

    const/high16 v2, 0x42340000    # 45.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    const-string v1, "iconScale"

    const v2, 0x3f266666    # 0.65f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    const-string v1, "cornerPulseIconEnabled"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    const-string v1, "cornerPulseIconTimer"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    const-string v1, "cornerPulseIconCount"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    const-string v1, "floatingPopMethod"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    const-string v1, "floatingWobbleXAmplitude"

    const/high16 v2, 0x41240000    # 10.25f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    const-string v1, "floatingWobbleXFrequency"

    const/high16 v2, 0x40100000    # 2.25f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    const-string v1, "floatingWobbleYAmplitude"

    const/high16 v2, 0x410c0000    # 8.75f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    const-string v1, "floatingWobbleYFrequency"

    const/high16 v2, 0x40980000    # 4.75f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    const-string v1, "collisionToNodeAmplitude"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    const-string v1, "collisionToNodeFrequency"

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    const-string v1, "floatingSpeedDampen"

    const v2, 0x3f666666    # 0.9f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    const-string v1, "floatingAngleChangeEnabled"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    const-string v1, "floatingAngleChange"

    const/high16 v2, 0x420c0000    # 35.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    const-string v1, "floatingAngleChangeTime"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    iput-object v0, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerInitialisationData:Ljava/util/HashMap;

    .line 703
    return-void
.end method

.method private updateBadgeNotificationForOffer(Ljava/lang/String;)V
    .locals 8
    .param p1, "offerId"    # Ljava/lang/String;

    .prologue
    .line 1097
    iget-object v6, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    invoke-interface {v6}, Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;->numberOfBubblesActive()I

    move-result v3

    .line 1100
    .local v3, "numberOfBubblesActive":I
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->maximumNumberOfOffersToDisplay()I

    move-result v6

    sub-int/2addr v6, v3

    add-int/lit8 v4, v6, 0x1

    .line 1102
    .local v4, "numberOfBubblesRemainingToDisplay":I
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->numberOfNewOffersToDisplay()I

    move-result v6

    if-ge v6, v4, :cond_1

    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->numberOfNewOffersToDisplay()I

    move-result v1

    .line 1104
    .local v1, "badgeNumber":I
    :goto_0
    if-lez v1, :cond_0

    .line 1107
    invoke-direct {p0, p1}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUISessionHasOfferBeenDisplayed(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 1109
    .local v5, "offerHasBeenSeen":Z
    if-nez v5, :cond_0

    .line 1111
    new-instance v0, Ljava/util/HashMap;

    const/4 v6, 0x2

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 1113
    .local v0, "badgeData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "identifier"

    const-string v7, "update"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    const-string v6, "corner"

    iget-object v7, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->cornerToDisplayFrom:Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1118
    .local v2, "badgeNumberString":Ljava/lang/String;
    const-string v6, "text"

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    iget-object v6, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    invoke-interface {v6, v0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;->updateBadgeNotification(Ljava/util/HashMap;)V

    .line 1127
    .end local v0    # "badgeData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "badgeNumberString":Ljava/lang/String;
    .end local v5    # "offerHasBeenSeen":Z
    :cond_0
    return-void

    .end local v1    # "badgeNumber":I
    :cond_1
    move v1, v4

    .line 1102
    goto :goto_0
.end method


# virtual methods
.method public cornerOffsetScaleFactor()F
    .locals 2

    .prologue
    .line 597
    const/high16 v0, 0x3f800000    # 1.0f

    .line 599
    .local v0, "factor":F
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerConfig:Lcom/chillingo/liboffers/model/OfferConfig;

    if-eqz v1, :cond_0

    .line 600
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerConfig:Lcom/chillingo/liboffers/model/OfferConfig;

    invoke-virtual {v1}, Lcom/chillingo/liboffers/model/OfferConfig;->getCornerPositionAdjust()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v0

    .line 602
    :cond_0
    return v0
.end method

.method public deactivateUiWithListener(Lcom/chillingo/liboffers/partnerapi/OfferGuiDeactivateListener;Z)V
    .locals 2
    .param p1, "listener"    # Lcom/chillingo/liboffers/partnerapi/OfferGuiDeactivateListener;
    .param p2, "immediately"    # Z

    .prologue
    .line 344
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->deactivationListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 345
    const-string v0, "OffersGUI"

    const-string v1, "deactivateUiWithListener"

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->deactivationListener:Ljava/lang/ref/WeakReference;

    .line 349
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->receiver:Lcom/chillingo/liboffers/gui/OfferGuiImpl$OfferGuiBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->receiver:Lcom/chillingo/liboffers/gui/OfferGuiImpl$OfferGuiBroadcastReceiver;

    invoke-virtual {v0}, Lcom/chillingo/liboffers/gui/OfferGuiImpl$OfferGuiBroadcastReceiver;->shutdown()V

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->receiver:Lcom/chillingo/liboffers/gui/OfferGuiImpl$OfferGuiBroadcastReceiver;

    .line 354
    :cond_0
    if-eqz p2, :cond_2

    .line 355
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->onViewControllerCleanupComplete()V

    .line 366
    :cond_1
    :goto_0
    return-void

    .line 358
    :cond_2
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    invoke-interface {v0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;->cleanup()V

    goto :goto_0

    .line 364
    :cond_3
    const-string v0, "OffersGUI"

    const-string v1, "Offers GUI is already in the process of being deactivated"

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public frameInterval()Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->frameInterval:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    return-object v0
.end method

.method public initialise(Lcom/chillingo/liboffers/model/OfferConfig;Ljava/lang/String;Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;Lcom/chillingo/liboffers/partnerapi/OfferGuiTelemetryHandler;)V
    .locals 2
    .param p1, "offerConfig"    # Lcom/chillingo/liboffers/model/OfferConfig;
    .param p2, "theme"    # Ljava/lang/String;
    .param p3, "offerGUISession"    # Lcom/chillingo/liboffers/partnerapi/OfferGuiSession;
    .param p4, "telemetryHandler"    # Lcom/chillingo/liboffers/partnerapi/OfferGuiTelemetryHandler;

    .prologue
    .line 153
    const-string v0, "OffersGUI"

    const-string v1, "initialise"

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    if-nez p3, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No GUI session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    if-nez p4, :cond_1

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No telemetry handler"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_1
    invoke-static {}, Lcom/chillingo/liboffers/gui/theme/ThemeManager;->getInstance()Lcom/chillingo/liboffers/gui/theme/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/chillingo/liboffers/gui/theme/ThemeManager;->setTheme(Ljava/lang/String;)V

    .line 165
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerConfig:Lcom/chillingo/liboffers/model/OfferConfig;

    .line 166
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGuiSession:Ljava/lang/ref/WeakReference;

    .line 167
    iput-object p4, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGuiTelemetryHandler:Lcom/chillingo/liboffers/partnerapi/OfferGuiTelemetryHandler;

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->cornerBubbleVisible:Z

    .line 172
    sget-object v0, Lcom/chillingo/liboffers/OfferSession$OffersCorner;->OFFERS_CORNER_BOTTOM_LEFT:Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->cornerToDisplayFrom:Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    .line 173
    sget-object v0, Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;->OFFERS_FRAME_INTERVAL_LOW:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->frameInterval:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    .line 174
    sget-object v0, Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;->TIMER:Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->updateMethod:Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    .line 176
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->setupOfferInitialisationData()V

    .line 177
    return-void
.end method

.method public isUIActive()Z
    .locals 2

    .prologue
    .line 420
    const/4 v0, 0x0

    .line 421
    .local v0, "uiActive":Z
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    invoke-interface {v1}, Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 424
    :cond_0
    :goto_0
    return v0

    .line 422
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maximumNumberOfOffersToDisplay()I
    .locals 2

    .prologue
    .line 520
    sget-object v1, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->DEFAULT_MAXIMUM_NUMBEROFBUBBLES_TO_DISPLAY:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 522
    .local v0, "maxNumberOfOffersToDisplay":I
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerConfig:Lcom/chillingo/liboffers/model/OfferConfig;

    if-eqz v1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerConfig:Lcom/chillingo/liboffers/model/OfferConfig;

    invoke-virtual {v1}, Lcom/chillingo/liboffers/model/OfferConfig;->getNumberOfOffers()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 527
    :cond_0
    return v0
.end method

.method public numberOfNewOffersToDisplay()I
    .locals 1

    .prologue
    .line 581
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUISessionRemainingNewOffersToDisplay()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public numberOfOffersToAutoRelease()I
    .locals 2

    .prologue
    .line 556
    const/4 v0, 0x0

    .line 558
    .local v0, "numberToAutoRelease":I
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerConfig:Lcom/chillingo/liboffers/model/OfferConfig;

    if-eqz v1, :cond_0

    .line 560
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerConfig:Lcom/chillingo/liboffers/model/OfferConfig;

    invoke-virtual {v1}, Lcom/chillingo/liboffers/model/OfferConfig;->getNumberOfOffersAutoReleased()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 563
    :cond_0
    return v0
.end method

.method public numberOfOffersToReleaseFromTheCorner()I
    .locals 2

    .prologue
    .line 535
    sget-object v1, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->DEFAULT_MAXIMUM_NUMBEROFBUBBLES_TAP_TO_RELEASE:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 537
    .local v0, "numberOfOffersToRelease":I
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerConfig:Lcom/chillingo/liboffers/model/OfferConfig;

    if-eqz v1, :cond_0

    .line 539
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerConfig:Lcom/chillingo/liboffers/model/OfferConfig;

    invoke-virtual {v1}, Lcom/chillingo/liboffers/model/OfferConfig;->getNumberOfOffersCornerTap()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 546
    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 548
    return v0
.end method

.method public offerActivated(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 746
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 747
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/chillingo/liboffers/gui/OfferGuiImpl$2;

    invoke-direct {v1, p0}, Lcom/chillingo/liboffers/gui/OfferGuiImpl$2;-><init>(Lcom/chillingo/liboffers/gui/OfferGuiImpl;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 753
    return-void
.end method

.method public offerClosed(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 758
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 759
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/chillingo/liboffers/gui/OfferGuiImpl$3;

    invoke-direct {v1, p0}, Lcom/chillingo/liboffers/gui/OfferGuiImpl$3;-><init>(Lcom/chillingo/liboffers/gui/OfferGuiImpl;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 765
    return-void
.end method

.method public offerDataUpdatedWithConfig(Lcom/chillingo/liboffers/model/OfferConfig;)V
    .locals 5
    .param p1, "offerConfig"    # Lcom/chillingo/liboffers/model/OfferConfig;

    .prologue
    .line 181
    const-string v3, "OffersGUI"

    const-string v4, "offerConfigUpdated"

    invoke-static {v3, v4}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    if-eqz p1, :cond_2

    .line 186
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerConfig:Lcom/chillingo/liboffers/model/OfferConfig;

    .line 189
    iget-object v3, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    if-eqz v3, :cond_2

    .line 191
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 193
    .local v2, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerConfig:Lcom/chillingo/liboffers/model/OfferConfig;

    invoke-virtual {v3}, Lcom/chillingo/liboffers/model/OfferConfig;->getGreyBackground()Ljava/lang/Boolean;

    move-result-object v1

    .line 194
    .local v1, "greyBackground":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 195
    const-string v3, "backgroundLayerEnabled"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_0
    iget-object v3, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerConfig:Lcom/chillingo/liboffers/model/OfferConfig;

    invoke-virtual {v3}, Lcom/chillingo/liboffers/model/OfferConfig;->getEnableGreyBackgroundAfterAutoRelease()Ljava/lang/Boolean;

    move-result-object v0

    .line 198
    .local v0, "enableGreyBackgroundAfterAutoRelease":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    .line 199
    const-string v3, "enableGreyBackgroundAfterAutoRelease"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_1
    iget-object v3, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    invoke-interface {v3, v2}, Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;->parseProperties(Ljava/util/HashMap;)V

    .line 214
    .end local v0    # "enableGreyBackgroundAfterAutoRelease":Ljava/lang/Boolean;
    .end local v1    # "greyBackground":Ljava/lang/Boolean;
    .end local v2    # "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->determineIfAnyOffersShouldBeDisplayed()V

    .line 215
    return-void
.end method

.method public onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 451
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    check-cast v0, Lcom/chillingo/liboffers/gui/renderer/ViewController;

    invoke-interface {v0}, Lcom/chillingo/liboffers/gui/renderer/ViewController;->onPause()V

    .line 458
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 439
    const-string v3, "offerUICorner"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 440
    .local v0, "corner":I
    const-string v3, "offerUIFrameInterval"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 441
    .local v1, "frameinterval":I
    const-string v3, "offerUIUpdateMethod"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 443
    .local v2, "method":I
    invoke-static {}, Lcom/chillingo/liboffers/OfferSession$OffersCorner;->values()[Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    move-result-object v3

    aget-object v3, v3, v0

    iput-object v3, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->cornerToDisplayFrom:Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    .line 444
    invoke-static {}, Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;->values()[Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    move-result-object v3

    aget-object v3, v3, v1

    iput-object v3, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->frameInterval:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    .line 445
    invoke-static {}, Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;->values()[Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    move-result-object v3

    aget-object v3, v3, v2

    iput-object v3, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->updateMethod:Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    .line 446
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    check-cast v0, Lcom/chillingo/liboffers/gui/renderer/ViewController;

    invoke-interface {v0}, Lcom/chillingo/liboffers/gui/renderer/ViewController;->onResume()V

    .line 465
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 430
    const-string v0, "offerUICorner"

    iget-object v1, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->cornerToDisplayFrom:Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    invoke-virtual {v1}, Lcom/chillingo/liboffers/OfferSession$OffersCorner;->ordinal()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 431
    const-string v0, "offerUIFrameInterval"

    iget-object v1, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->frameInterval:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    invoke-virtual {v1}, Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;->ordinal()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 432
    const-string v0, "offerUIUpdateMethod"

    iget-object v1, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->updateMethod:Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    invoke-virtual {v1}, Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;->ordinal()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 433
    return-void
.end method

.method public onViewControllerCleanupComplete()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 372
    const-string v3, "OffersGUI"

    const-string v4, "onViewControllerCleanupComplete"

    invoke-static {v3, v4}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v3, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    if-eqz v3, :cond_0

    .line 375
    iget-object v3, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 377
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    move-object v2, v1

    .line 378
    check-cast v2, Landroid/view/ViewGroup;

    .line 379
    .local v2, "parentViewGroup":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 381
    iput-object v5, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    .line 388
    .end local v1    # "parent":Landroid/view/ViewParent;
    .end local v2    # "parentViewGroup":Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->cornerBubbleVisible:Z

    .line 391
    iget-object v3, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->deactivationListener:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    .line 393
    iget-object v3, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->deactivationListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/partnerapi/OfferGuiDeactivateListener;

    .line 394
    .local v0, "listener":Lcom/chillingo/liboffers/partnerapi/OfferGuiDeactivateListener;
    if-eqz v0, :cond_1

    .line 395
    invoke-interface {v0}, Lcom/chillingo/liboffers/partnerapi/OfferGuiDeactivateListener;->deactivateUIComplete()V

    .line 396
    :cond_1
    iput-object v5, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->deactivationListener:Ljava/lang/ref/WeakReference;

    .line 408
    .end local v0    # "listener":Lcom/chillingo/liboffers/partnerapi/OfferGuiDeactivateListener;
    :cond_2
    return-void

    .line 384
    .restart local v1    # "parent":Landroid/view/ViewParent;
    :cond_3
    iget-object v3, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;->setVisibility(I)V

    goto :goto_0
.end method

.method public pauseDrawing()V
    .locals 2

    .prologue
    .line 325
    const-string v0, "OffersGUI"

    const-string v1, "pauseDrawing"

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    check-cast v0, Lcom/chillingo/liboffers/gui/renderer/ViewController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/chillingo/liboffers/gui/renderer/ViewController;->setPaused(Z)V

    .line 330
    :cond_0
    return-void
.end method

.method public releaseOffersInOrder()Z
    .locals 2

    .prologue
    .line 570
    const/4 v0, 0x0

    .line 572
    .local v0, "releaseInOrder":Z
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerConfig:Lcom/chillingo/liboffers/model/OfferConfig;

    if-eqz v1, :cond_0

    .line 573
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerConfig:Lcom/chillingo/liboffers/model/OfferConfig;

    invoke-virtual {v1}, Lcom/chillingo/liboffers/model/OfferConfig;->getEnforceOrder()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 575
    :cond_0
    return v0
.end method

.method public removeView()V
    .locals 0

    .prologue
    .line 415
    return-void
.end method

.method public resumeDrawing()V
    .locals 2

    .prologue
    .line 334
    const-string v0, "OffersGUI"

    const-string v1, "resumeDrawing"

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    check-cast v0, Lcom/chillingo/liboffers/gui/renderer/ViewController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/chillingo/liboffers/gui/renderer/ViewController;->setPaused(Z)V

    .line 339
    :cond_0
    return-void
.end method

.method public setFrameInterval(Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;)V
    .locals 0
    .param p1, "interval"    # Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->frameInterval:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    .line 226
    return-void
.end method

.method public setUpdateMethod(Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;)V
    .locals 0
    .param p1, "method"    # Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->updateMethod:Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    .line 237
    return-void
.end method

.method public showBadgeNotification(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 803
    const-string v1, "offerid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 804
    .local v0, "offerId":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->updateBadgeNotificationForOffer(Ljava/lang/String;)V

    .line 805
    return-void
.end method

.method public showNextOffer(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 773
    const-string v5, "OffersGUI"

    const-string v6, "showNextOffer"

    invoke-static {v5, v6}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->removeBadgeNotification()V

    .line 777
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->numberOfOffersToReleaseFromTheCorner()I

    move-result v4

    .line 779
    .local v4, "numberOfBubblesToRelease":I
    const/4 v0, 0x1

    .line 781
    .local v0, "attemptReleaseOfOffers":Z
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->releaseOffersInOrder()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 782
    invoke-direct {p0, v4}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUISessionAreOffersAvailableAndReadyInOrderWithCount(I)Z

    move-result v0

    .line 784
    :cond_0
    if-eqz v0, :cond_2

    .line 786
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->cornerBubbleVisible:Z

    .line 788
    const-wide/16 v2, 0x0

    .line 791
    .local v2, "delayTime":D
    add-int/lit8 v1, v4, -0x1

    .line 793
    .local v1, "numberOfBubblesLeftToRelease":I
    if-lez v1, :cond_1

    .line 794
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->attemptReleaseOfAutoReleaseOffers(Ljava/lang/Integer;)D

    move-result-wide v2

    .line 797
    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->attemptReleaseOfCornerTapOfferAfterDelay(D)V

    .line 799
    .end local v1    # "numberOfBubblesLeftToRelease":I
    .end local v2    # "delayTime":D
    :cond_2
    return-void
.end method

.method public sizeScaleFactor()F
    .locals 2

    .prologue
    .line 587
    const/high16 v0, 0x3f800000    # 1.0f

    .line 589
    .local v0, "factor":F
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerConfig:Lcom/chillingo/liboffers/model/OfferConfig;

    if-eqz v1, :cond_0

    .line 590
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerConfig:Lcom/chillingo/liboffers/model/OfferConfig;

    invoke-virtual {v1}, Lcom/chillingo/liboffers/model/OfferConfig;->getBubbleSizeAdjust()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v0

    .line 592
    :cond_0
    return v0
.end method

.method public startDrawingOverActivity(Landroid/app/Activity;Lcom/chillingo/liboffers/OfferSession$OffersCorner;Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "corner"    # Lcom/chillingo/liboffers/OfferSession$OffersCorner;
    .param p3, "frameInterval"    # Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    .prologue
    .line 244
    const-string v6, "OffersGUI"

    const-string v7, "startDrawingOverActivity"

    invoke-static {v6, v7}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v6, Lcom/chillingo/liboffers/gui/OfferGuiImpl$OfferGuiBroadcastReceiver;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v7

    invoke-direct {v6, p0, p0, v7}, Lcom/chillingo/liboffers/gui/OfferGuiImpl$OfferGuiBroadcastReceiver;-><init>(Lcom/chillingo/liboffers/gui/OfferGuiImpl;Lcom/chillingo/liboffers/gui/OfferGuiImpl;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->receiver:Lcom/chillingo/liboffers/gui/OfferGuiImpl$OfferGuiBroadcastReceiver;

    .line 248
    iput-object p2, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->cornerToDisplayFrom:Lcom/chillingo/liboffers/OfferSession$OffersCorner;

    .line 249
    iput-object p3, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->frameInterval:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    .line 252
    invoke-static {}, Lcom/chillingo/liboffers/utils/DeviceUtils;->clearCacheData()V

    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "addViewsToViewHierarchy":Z
    invoke-direct {p0, p1}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->findOfferGUIViewController(Landroid/app/Activity;)Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    move-result-object v6

    iput-object v6, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    .line 257
    iget-object v6, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    if-nez v6, :cond_0

    .line 259
    invoke-direct {p0, p1}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->createOfferGUIViewControllerInstance(Landroid/app/Activity;)Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    move-result-object v6

    iput-object v6, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    .line 260
    const/4 v0, 0x1

    .line 263
    :cond_0
    iget-object v6, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    iget-object v7, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGuiTelemetryHandler:Lcom/chillingo/liboffers/partnerapi/OfferGuiTelemetryHandler;

    invoke-interface {v6, v7}, Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;->setTelemetryHandler(Lcom/chillingo/liboffers/partnerapi/OfferGuiTelemetryHandler;)V

    .line 264
    iget-object v6, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    invoke-interface {v6, p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;->setViewControllerDelegate(Lcom/chillingo/liboffers/gui/renderer/ViewControllerDelegate;)V

    .line 267
    invoke-direct {p0, p1}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->findOfferGUIView(Landroid/app/Activity;)Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleView;

    move-result-object v1

    .line 269
    .local v1, "bubbleView":Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleView;
    if-eqz v1, :cond_5

    .line 270
    iget-object v6, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    invoke-interface {v6, v1}, Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;->onBubbleViewAdded(Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleView;)V

    .line 276
    :goto_0
    iget-object v6, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    check-cast v6, Lcom/chillingo/liboffers/gui/renderer/ViewController;

    iget-object v7, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->frameInterval:Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    invoke-interface {v6, v7}, Lcom/chillingo/liboffers/gui/renderer/ViewController;->setFrameInterval(Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;)V

    .line 280
    if-eqz v0, :cond_1

    .line 281
    invoke-direct {p0, p1}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->addOfferGUIViewToActivity(Landroid/app/Activity;)V

    .line 285
    :cond_1
    iget-object v6, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;->setVisibility(I)V

    .line 292
    new-instance v5, Ljava/util/HashMap;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 294
    .local v5, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v6, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerConfig:Lcom/chillingo/liboffers/model/OfferConfig;

    if-eqz v6, :cond_3

    .line 295
    iget-object v6, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerConfig:Lcom/chillingo/liboffers/model/OfferConfig;

    invoke-virtual {v6}, Lcom/chillingo/liboffers/model/OfferConfig;->getGreyBackground()Ljava/lang/Boolean;

    move-result-object v3

    .line 296
    .local v3, "greyBackground":Ljava/lang/Boolean;
    if-eqz v3, :cond_2

    .line 297
    const-string v6, "backgroundLayerEnabled"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_2
    iget-object v6, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerConfig:Lcom/chillingo/liboffers/model/OfferConfig;

    invoke-virtual {v6}, Lcom/chillingo/liboffers/model/OfferConfig;->getEnableGreyBackgroundAfterAutoRelease()Ljava/lang/Boolean;

    move-result-object v2

    .line 300
    .local v2, "enableGreyBackgroundAfterAutoRelease":Ljava/lang/Boolean;
    if-eqz v2, :cond_3

    .line 301
    const-string v6, "enableGreyBackgroundAfterAutoRelease"

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .end local v2    # "enableGreyBackgroundAfterAutoRelease":Ljava/lang/Boolean;
    .end local v3    # "greyBackground":Ljava/lang/Boolean;
    :cond_3
    iget-object v6, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    invoke-interface {v6, v5}, Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;->parseProperties(Ljava/util/HashMap;)V

    .line 310
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUISessionOfferDataAvailable()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 311
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 312
    .local v4, "handler":Landroid/os/Handler;
    new-instance v6, Lcom/chillingo/liboffers/gui/OfferGuiImpl$1;

    invoke-direct {v6, p0}, Lcom/chillingo/liboffers/gui/OfferGuiImpl$1;-><init>(Lcom/chillingo/liboffers/gui/OfferGuiImpl;)V

    const-wide/16 v8, 0x64

    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 320
    .end local v4    # "handler":Landroid/os/Handler;
    :cond_4
    const-string v6, "OffersGUI"

    const-string v7, "Finished startDrawingOverActivity"

    invoke-static {v6, v7}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return-void

    .line 273
    .end local v5    # "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    iget-object v6, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerGUIViewController:Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;

    const-class v7, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewOpenGLImpl;

    invoke-interface {v6, v7}, Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;->addBubbleViewFromClass(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public updateMethod()Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->updateMethod:Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    return-object v0
.end method

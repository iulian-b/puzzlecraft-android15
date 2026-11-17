.class Lcom/fusepowered/m2/mobileads/VastCompanionAdXmlManager;
.super Ljava/lang/Object;
.source "VastCompanionAdXmlManager.java"


# static fields
.field private static final COMPANION_CLICK_THROUGH:Ljava/lang/String; = "CompanionClickThrough"

.field private static final COMPANION_CLICK_TRACKING:Ljava/lang/String; = "CompanionClickTracking"

.field private static final CREATIVE_VIEW:Ljava/lang/String; = "creativeView"

.field private static final EVENT:Ljava/lang/String; = "event"

.field private static final HEIGHT:Ljava/lang/String; = "height"

.field private static final TRACKING_EVENTS:Ljava/lang/String; = "TrackingEvents"

.field private static final VIDEO_TRACKER:Ljava/lang/String; = "Tracking"

.field private static final WIDTH:Ljava/lang/String; = "width"


# instance fields
.field private final mCompanionNode:Lorg/w3c/dom/Node;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mResourceXmlManager:Lcom/fusepowered/m2/mobileads/VastResourceXmlManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1
    .param p1, "companionNode"    # Lorg/w3c/dom/Node;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "companionNode cannot be null"

    invoke-static {p1, v0}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/VastCompanionAdXmlManager;->mCompanionNode:Lorg/w3c/dom/Node;

    .line 41
    new-instance v0, Lcom/fusepowered/m2/mobileads/VastResourceXmlManager;

    invoke-direct {v0, p1}, Lcom/fusepowered/m2/mobileads/VastResourceXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    iput-object v0, p0, Lcom/fusepowered/m2/mobileads/VastCompanionAdXmlManager;->mResourceXmlManager:Lcom/fusepowered/m2/mobileads/VastResourceXmlManager;

    .line 42
    return-void
.end method


# virtual methods
.method getClickThroughUrl()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 78
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastCompanionAdXmlManager;->mCompanionNode:Lorg/w3c/dom/Node;

    const-string v2, "CompanionClickThrough"

    invoke-static {v1, v2}, Lcom/fusepowered/m2/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 82
    .local v0, "node":Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getClickTrackers()Ljava/util/List;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v0, "companionAdClickTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastTracker;>;"
    iget-object v5, p0, Lcom/fusepowered/m2/mobileads/VastCompanionAdXmlManager;->mCompanionNode:Lorg/w3c/dom/Node;

    const-string v6, "CompanionClickTracking"

    invoke-static {v5, v6}, Lcom/fusepowered/m2/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 95
    .local v3, "trackerNodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    if-nez v3, :cond_1

    .line 104
    :cond_0
    return-object v0

    .line 98
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    .line 99
    .local v2, "trackerNode":Lorg/w3c/dom/Node;
    invoke-static {v2}, Lcom/fusepowered/m2/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "uri":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 101
    new-instance v5, Lcom/fusepowered/m2/mobileads/VastTracker;

    invoke-direct {v5, v4}, Lcom/fusepowered/m2/mobileads/VastTracker;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getCompanionCreativeViewTrackers()Ljava/util/List;
    .locals 9
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m2/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v0, "companionCreativeViewTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m2/mobileads/VastTracker;>;"
    iget-object v6, p0, Lcom/fusepowered/m2/mobileads/VastCompanionAdXmlManager;->mCompanionNode:Lorg/w3c/dom/Node;

    const-string v7, "TrackingEvents"

    invoke-static {v6, v7}, Lcom/fusepowered/m2/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 122
    .local v2, "node":Lorg/w3c/dom/Node;
    if-nez v2, :cond_1

    .line 138
    :cond_0
    return-object v0

    .line 126
    :cond_1
    const-string v6, "Tracking"

    const-string v7, "event"

    const-string v8, "creativeView"

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lcom/fusepowered/m2/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 133
    .local v4, "trackerNodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Node;

    .line 134
    .local v3, "trackerNode":Lorg/w3c/dom/Node;
    invoke-static {v3}, Lcom/fusepowered/m2/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, "trackerUrl":Ljava/lang/String;
    new-instance v6, Lcom/fusepowered/m2/mobileads/VastTracker;

    invoke-direct {v6, v5}, Lcom/fusepowered/m2/mobileads/VastTracker;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getHeight()Ljava/lang/Integer;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastCompanionAdXmlManager;->mCompanionNode:Lorg/w3c/dom/Node;

    const-string v1, "height"

    invoke-static {v0, v1}, Lcom/fusepowered/m2/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method getResourceXmlManager()Lcom/fusepowered/m2/mobileads/VastResourceXmlManager;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastCompanionAdXmlManager;->mResourceXmlManager:Lcom/fusepowered/m2/mobileads/VastResourceXmlManager;

    return-object v0
.end method

.method getWidth()Ljava/lang/Integer;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastCompanionAdXmlManager;->mCompanionNode:Lorg/w3c/dom/Node;

    const-string v1, "width"

    invoke-static {v0, v1}, Lcom/fusepowered/m2/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method hasResources()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastCompanionAdXmlManager;->mResourceXmlManager:Lcom/fusepowered/m2/mobileads/VastResourceXmlManager;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/VastResourceXmlManager;->getStaticResource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastCompanionAdXmlManager;->mResourceXmlManager:Lcom/fusepowered/m2/mobileads/VastResourceXmlManager;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/VastResourceXmlManager;->getHTMLResource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastCompanionAdXmlManager;->mResourceXmlManager:Lcom/fusepowered/m2/mobileads/VastResourceXmlManager;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/VastResourceXmlManager;->getIFrameResource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

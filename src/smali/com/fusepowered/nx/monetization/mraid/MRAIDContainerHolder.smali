.class Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;
.super Ljava/util/HashMap;
.source "MRAIDContainerHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x17c613f825d2e2eaL


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 175
    return-void
.end method

.method private releaseContainers(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;

    .prologue
    const/4 v1, 0x0

    .line 162
    if-nez p1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p1, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p1, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->releaseWithCloseAnimation()V

    .line 167
    iput-object v1, p1, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .line 169
    :cond_2
    iget-object v0, p1, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p1, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->releaseWithCloseAnimation()V

    .line 171
    iput-object v1, p1, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    goto :goto_0
.end method


# virtual methods
.method public getCachedContainer(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    .locals 2
    .param p1, "type"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-static {p1, p2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getContainerName(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;

    .line 86
    .local v0, "dataHolder":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    if-eqz v0, :cond_0

    .line 87
    iget-object v1, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .line 89
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContainer(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    .locals 1
    .param p1, "type"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {p1, p2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getContainerName(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;->getContainer(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    move-result-object v0

    return-object v0
.end method

.method public getContainer(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    .locals 2
    .param p1, "containerName"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;

    .line 101
    .local v0, "dataHolder":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    if-eqz v0, :cond_0

    .line 102
    iget-object v1, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .line 104
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getMapDataHolder(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    .locals 1
    .param p1, "type"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p1, p2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getContainerName(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;->getMapDataHolder(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;

    move-result-object v0

    return-object v0
.end method

.method getMapDataHolder(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;

    .line 60
    .local v0, "dataHolder":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;

    .end local v0    # "dataHolder":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    invoke-direct {v0, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;-><init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;)V

    .line 62
    .restart local v0    # "dataHolder":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    invoke-virtual {p0, p1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_0
    return-object v0
.end method

.method public hasContainer(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "type"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "cached"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    invoke-static {p1, p2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getContainerName(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;

    .line 72
    .local v0, "dataHolder":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    if-eqz v0, :cond_3

    .line 73
    if-eqz p3, :cond_2

    .line 74
    iget-object v3, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    if-eqz v3, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 74
    goto :goto_0

    .line 76
    :cond_2
    iget-object v3, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    .line 79
    goto :goto_0
.end method

.method public putContainer(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Z)V
    .locals 2
    .param p1, "container"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    .param p2, "cached"    # Z

    .prologue
    .line 34
    if-eqz p1, :cond_1

    .line 35
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getContainerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;->getMapDataHolder(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;

    move-result-object v0

    .line 36
    .local v0, "dataHolder":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    if-eqz p2, :cond_2

    .line 37
    iget-object v1, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->releaseWithCloseAnimation()V

    .line 40
    :cond_0
    iput-object p1, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .line 49
    .end local v0    # "dataHolder":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    :cond_1
    :goto_0
    return-void

    .line 42
    .restart local v0    # "dataHolder":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    :cond_2
    iget-object v1, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    if-eqz v1, :cond_3

    .line 43
    iget-object v1, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->releaseWithCloseAnimation()V

    .line 45
    :cond_3
    iput-object p1, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 155
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;

    invoke-direct {p0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;->releaseContainers(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;)V

    goto :goto_0

    .line 157
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;->clear()V

    .line 158
    return-void
.end method

.method public releaseContainer(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Z)V
    .locals 3
    .param p1, "container"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    .param p2, "closeAnimation"    # Z

    .prologue
    const/4 v2, 0x0

    .line 126
    if-nez p1, :cond_0

    .line 145
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getContainerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;

    .line 131
    .local v0, "holder":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    if-eqz v0, :cond_1

    .line 133
    iget-object v1, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    if-ne v1, p1, :cond_2

    .line 134
    iput-object v2, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .line 144
    :cond_1
    :goto_1
    invoke-virtual {p1, p2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->shouldReleaseWithCloseAnimation(Z)V

    goto :goto_0

    .line 135
    :cond_2
    iget-object v1, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    if-ne v1, p1, :cond_1

    .line 136
    iput-object v2, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    goto :goto_1
.end method

.method public releaseContainer(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "type"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "cached"    # Z

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-static {p1, p2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getContainerName(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;

    .line 112
    .local v0, "holder":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    if-eqz v0, :cond_0

    .line 113
    if-eqz p3, :cond_1

    iget-object v1, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->releaseWithCloseAnimation()V

    .line 115
    iput-object v2, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v1, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->releaseWithCloseAnimation()V

    .line 118
    iput-object v2, v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    goto :goto_0
.end method

.method public releaseContainersByName(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-static {p1, p2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getContainerName(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;

    invoke-direct {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;->releaseContainers(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;)V

    .line 151
    return-void
.end method

.class public Lcom/fusepowered/ads/Waterfall;
.super Ljava/lang/Object;
.source "Waterfall.java"


# instance fields
.field private final orderedProviders:[I


# direct methods
.method public constructor <init>([I)V
    .locals 1
    .param p1, "orderedProviders"    # [I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    if-eqz p1, :cond_0

    .end local p1    # "orderedProviders":[I
    :goto_0
    iput-object p1, p0, Lcom/fusepowered/ads/Waterfall;->orderedProviders:[I

    .line 14
    return-void

    .line 13
    .restart local p1    # "orderedProviders":[I
    :cond_0
    const/4 v0, 0x0

    new-array p1, v0, [I

    goto :goto_0
.end method


# virtual methods
.method public contains(I)Z
    .locals 5
    .param p1, "providerId"    # I

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fusepowered/ads/Waterfall;->orderedProviders:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget v2, v0, v1

    .line 26
    .local v2, "idInWaterfall":I
    if-ne v2, p1, :cond_0

    .line 27
    const/4 v4, 0x1

    .line 30
    .end local v2    # "idInWaterfall":I
    :goto_1
    return v4

    .line 25
    .restart local v2    # "idInWaterfall":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    .end local v2    # "idInWaterfall":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getOrderedProviders()[I
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fusepowered/ads/Waterfall;->orderedProviders:[I

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fusepowered/ads/Waterfall;->orderedProviders:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

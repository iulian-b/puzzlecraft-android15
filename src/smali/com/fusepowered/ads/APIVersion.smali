.class public Lcom/fusepowered/ads/APIVersion;
.super Ljava/lang/Object;
.source "APIVersion.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final versionComponents:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "versionString"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "components":[Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/util/ArrayUtils;->toIntArray([Ljava/lang/String;)[I

    move-result-object v1

    .line 18
    .local v1, "versionComponents":[I
    iput-object v1, p0, Lcom/fusepowered/ads/APIVersion;->versionComponents:[I

    .line 19
    return-void
.end method

.method public varargs constructor <init>([I)V
    .locals 2
    .param p1, "versionComponents"    # [I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one version component must be specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_1
    iput-object p1, p0, Lcom/fusepowered/ads/APIVersion;->versionComponents:[I

    .line 26
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 38
    move-object v2, p1

    check-cast v2, Lcom/fusepowered/ads/APIVersion;

    .line 40
    .local v2, "otherVersion":Lcom/fusepowered/ads/APIVersion;
    const/4 v3, 0x0

    .line 42
    .local v3, "result":I
    invoke-virtual {p0, v2}, Lcom/fusepowered/ads/APIVersion;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 43
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/fusepowered/ads/APIVersion;->versionComponents:[I

    array-length v5, v5

    if-ge v0, v5, :cond_0

    .line 44
    invoke-virtual {p0, v0}, Lcom/fusepowered/ads/APIVersion;->getVersionComponent(I)I

    move-result v4

    .local v4, "thisComponent":I
    move-object v5, p1

    .line 45
    check-cast v5, Lcom/fusepowered/ads/APIVersion;

    invoke-virtual {v5, v0}, Lcom/fusepowered/ads/APIVersion;->getVersionComponent(I)I

    move-result v1

    .line 47
    .local v1, "otherComponent":I
    if-le v4, v1, :cond_1

    .line 48
    move v3, v0

    .line 56
    .end local v0    # "i":I
    .end local v1    # "otherComponent":I
    .end local v4    # "thisComponent":I
    :cond_0
    :goto_1
    return v3

    .line 50
    .restart local v0    # "i":I
    .restart local v1    # "otherComponent":I
    .restart local v4    # "thisComponent":I
    :cond_1
    if-ge v4, v1, :cond_2

    .line 51
    neg-int v3, v0

    .line 52
    goto :goto_1

    .line 43
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 69
    move-object v1, p1

    check-cast v1, Lcom/fusepowered/ads/APIVersion;

    .line 70
    .local v1, "otherVersion":Lcom/fusepowered/ads/APIVersion;
    iget-object v2, p0, Lcom/fusepowered/ads/APIVersion;->versionComponents:[I

    iget-object v3, v1, Lcom/fusepowered/ads/APIVersion;->versionComponents:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    .line 71
    .local v0, "isEqual":Z
    return v0
.end method

.method public getVersionComponent(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fusepowered/ads/APIVersion;->versionComponents:[I

    array-length v0, v0

    if-le v0, p1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/fusepowered/ads/APIVersion;->versionComponents:[I

    aget v0, v0, p1

    .line 63
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/fusepowered/ads/APIVersion;->versionComponents:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

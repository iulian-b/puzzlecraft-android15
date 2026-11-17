.class public Lcom/fusepowered/nx/common/UDIDs;
.super Ljava/util/ArrayList;
.source "UDIDs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/nx/common/UDIDs$UDID;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/fusepowered/nx/common/UDIDs$UDID;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public addUDID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 38
    if-eqz p2, :cond_0

    .line 39
    new-instance v0, Lcom/fusepowered/nx/common/UDIDs$UDID;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/common/UDIDs$UDID;-><init>(Lcom/fusepowered/nx/common/UDIDs;)V

    .line 40
    .local v0, "udid":Lcom/fusepowered/nx/common/UDIDs$UDID;
    invoke-static {v0, p1}, Lcom/fusepowered/nx/common/UDIDs$UDID;->access$002(Lcom/fusepowered/nx/common/UDIDs$UDID;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    invoke-static {v0, p2}, Lcom/fusepowered/nx/common/UDIDs$UDID;->access$102(Lcom/fusepowered/nx/common/UDIDs$UDID;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/common/UDIDs;->add(Ljava/lang/Object;)Z

    .line 44
    .end local v0    # "udid":Lcom/fusepowered/nx/common/UDIDs$UDID;
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 49
    instance-of v2, p1, Lcom/fusepowered/nx/common/UDIDs;

    if-eqz v2, :cond_3

    move-object v1, p1

    .line 50
    check-cast v1, Lcom/fusepowered/nx/common/UDIDs;

    .line 51
    .local v1, "udid":Lcom/fusepowered/nx/common/UDIDs;
    invoke-virtual {v1}, Lcom/fusepowered/nx/common/UDIDs;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/fusepowered/nx/common/UDIDs;->size()I

    move-result v4

    if-eq v2, v4, :cond_0

    move v2, v3

    .line 62
    .end local v1    # "udid":Lcom/fusepowered/nx/common/UDIDs;
    :goto_0
    return v2

    .line 55
    .restart local v1    # "udid":Lcom/fusepowered/nx/common/UDIDs;
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/fusepowered/nx/common/UDIDs;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 56
    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/common/UDIDs;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fusepowered/nx/common/UDIDs$UDID;

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/common/UDIDs;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/fusepowered/nx/common/UDIDs$UDID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    .line 57
    goto :goto_0

    .line 55
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 60
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "udid":Lcom/fusepowered/nx/common/UDIDs;
    :cond_3
    move v2, v3

    .line 62
    goto :goto_0
.end method

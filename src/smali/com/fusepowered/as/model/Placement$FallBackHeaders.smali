.class final enum Lcom/fusepowered/as/model/Placement$FallBackHeaders;
.super Ljava/lang/Enum;
.source "Placement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/as/model/Placement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FallBackHeaders"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/as/model/Placement$FallBackHeaders;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/as/model/Placement$FallBackHeaders;

.field public static final enum HTML:Lcom/fusepowered/as/model/Placement$FallBackHeaders;

.field public static final enum VAST:Lcom/fusepowered/as/model/Placement$FallBackHeaders;


# instance fields
.field private key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lcom/fusepowered/as/model/Placement$FallBackHeaders;

    const-string v1, "VAST"

    const-string v2, "ASVAST"

    invoke-direct {v0, v1, v3, v2}, Lcom/fusepowered/as/model/Placement$FallBackHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/model/Placement$FallBackHeaders;->VAST:Lcom/fusepowered/as/model/Placement$FallBackHeaders;

    .line 28
    new-instance v0, Lcom/fusepowered/as/model/Placement$FallBackHeaders;

    const-string v1, "HTML"

    const-string v2, "ASHTML"

    invoke-direct {v0, v1, v4, v2}, Lcom/fusepowered/as/model/Placement$FallBackHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/model/Placement$FallBackHeaders;->HTML:Lcom/fusepowered/as/model/Placement$FallBackHeaders;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fusepowered/as/model/Placement$FallBackHeaders;

    sget-object v1, Lcom/fusepowered/as/model/Placement$FallBackHeaders;->VAST:Lcom/fusepowered/as/model/Placement$FallBackHeaders;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/as/model/Placement$FallBackHeaders;->HTML:Lcom/fusepowered/as/model/Placement$FallBackHeaders;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fusepowered/as/model/Placement$FallBackHeaders;->$VALUES:[Lcom/fusepowered/as/model/Placement$FallBackHeaders;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object p3, p0, Lcom/fusepowered/as/model/Placement$FallBackHeaders;->key:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/as/model/Placement$FallBackHeaders;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/fusepowered/as/model/Placement$FallBackHeaders;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/Placement$FallBackHeaders;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/as/model/Placement$FallBackHeaders;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/fusepowered/as/model/Placement$FallBackHeaders;->$VALUES:[Lcom/fusepowered/as/model/Placement$FallBackHeaders;

    invoke-virtual {v0}, [Lcom/fusepowered/as/model/Placement$FallBackHeaders;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/as/model/Placement$FallBackHeaders;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fusepowered/as/model/Placement$FallBackHeaders;->key:Ljava/lang/String;

    return-object v0
.end method

.class public final enum Lcom/fusepowered/as/model/ad/AdType;
.super Ljava/lang/Enum;
.source "AdType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/as/model/ad/AdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/as/model/ad/AdType;

.field public static final enum EXPANDED_MRAID:Lcom/fusepowered/as/model/ad/AdType;

.field public static final enum HTML:Lcom/fusepowered/as/model/ad/AdType;

.field public static final enum MRAID:Lcom/fusepowered/as/model/ad/AdType;

.field public static final enum THIRD_PARTY:Lcom/fusepowered/as/model/ad/AdType;

.field public static final enum VAST:Lcom/fusepowered/as/model/ad/AdType;

.field public static final enum VIDEO:Lcom/fusepowered/as/model/ad/AdType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/fusepowered/as/model/ad/AdType;

    const-string v1, "HTML"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/as/model/ad/AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/as/model/ad/AdType;->HTML:Lcom/fusepowered/as/model/ad/AdType;

    .line 7
    new-instance v0, Lcom/fusepowered/as/model/ad/AdType;

    const-string v1, "VAST"

    invoke-direct {v0, v1, v4}, Lcom/fusepowered/as/model/ad/AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/as/model/ad/AdType;->VAST:Lcom/fusepowered/as/model/ad/AdType;

    .line 8
    new-instance v0, Lcom/fusepowered/as/model/ad/AdType;

    const-string v1, "THIRD_PARTY"

    invoke-direct {v0, v1, v5}, Lcom/fusepowered/as/model/ad/AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/as/model/ad/AdType;->THIRD_PARTY:Lcom/fusepowered/as/model/ad/AdType;

    .line 9
    new-instance v0, Lcom/fusepowered/as/model/ad/AdType;

    const-string v1, "MRAID"

    invoke-direct {v0, v1, v6}, Lcom/fusepowered/as/model/ad/AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/as/model/ad/AdType;->MRAID:Lcom/fusepowered/as/model/ad/AdType;

    .line 10
    new-instance v0, Lcom/fusepowered/as/model/ad/AdType;

    const-string v1, "EXPANDED_MRAID"

    invoke-direct {v0, v1, v7}, Lcom/fusepowered/as/model/ad/AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/as/model/ad/AdType;->EXPANDED_MRAID:Lcom/fusepowered/as/model/ad/AdType;

    .line 11
    new-instance v0, Lcom/fusepowered/as/model/ad/AdType;

    const-string v1, "VIDEO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/as/model/ad/AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/as/model/ad/AdType;->VIDEO:Lcom/fusepowered/as/model/ad/AdType;

    .line 4
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/fusepowered/as/model/ad/AdType;

    sget-object v1, Lcom/fusepowered/as/model/ad/AdType;->HTML:Lcom/fusepowered/as/model/ad/AdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/as/model/ad/AdType;->VAST:Lcom/fusepowered/as/model/ad/AdType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/as/model/ad/AdType;->THIRD_PARTY:Lcom/fusepowered/as/model/ad/AdType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fusepowered/as/model/ad/AdType;->MRAID:Lcom/fusepowered/as/model/ad/AdType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fusepowered/as/model/ad/AdType;->EXPANDED_MRAID:Lcom/fusepowered/as/model/ad/AdType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fusepowered/as/model/ad/AdType;->VIDEO:Lcom/fusepowered/as/model/ad/AdType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fusepowered/as/model/ad/AdType;->$VALUES:[Lcom/fusepowered/as/model/ad/AdType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/as/model/ad/AdType;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lcom/fusepowered/as/model/ad/AdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/ad/AdType;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/as/model/ad/AdType;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/fusepowered/as/model/ad/AdType;->$VALUES:[Lcom/fusepowered/as/model/ad/AdType;

    invoke-virtual {v0}, [Lcom/fusepowered/as/model/ad/AdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/as/model/ad/AdType;

    return-object v0
.end method

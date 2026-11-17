.class public final enum Lcom/fusepowered/as/AerServAdType;
.super Ljava/lang/Enum;
.source "AerServAdType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/as/AerServAdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/as/AerServAdType;

.field public static final enum BANNER:Lcom/fusepowered/as/AerServAdType;

.field public static final enum INTERSTITIAL:Lcom/fusepowered/as/AerServAdType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/fusepowered/as/AerServAdType;

    const-string v1, "BANNER"

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/as/AerServAdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/as/AerServAdType;->BANNER:Lcom/fusepowered/as/AerServAdType;

    .line 16
    new-instance v0, Lcom/fusepowered/as/AerServAdType;

    const-string v1, "INTERSTITIAL"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/as/AerServAdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/as/AerServAdType;->INTERSTITIAL:Lcom/fusepowered/as/AerServAdType;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fusepowered/as/AerServAdType;

    sget-object v1, Lcom/fusepowered/as/AerServAdType;->BANNER:Lcom/fusepowered/as/AerServAdType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/as/AerServAdType;->INTERSTITIAL:Lcom/fusepowered/as/AerServAdType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fusepowered/as/AerServAdType;->$VALUES:[Lcom/fusepowered/as/AerServAdType;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/as/AerServAdType;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/fusepowered/as/AerServAdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/AerServAdType;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/as/AerServAdType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/fusepowered/as/AerServAdType;->$VALUES:[Lcom/fusepowered/as/AerServAdType;

    invoke-virtual {v0}, [Lcom/fusepowered/as/AerServAdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/as/AerServAdType;

    return-object v0
.end method

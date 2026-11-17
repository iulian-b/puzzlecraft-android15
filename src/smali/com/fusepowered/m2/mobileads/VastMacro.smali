.class final enum Lcom/fusepowered/m2/mobileads/VastMacro;
.super Ljava/lang/Enum;
.source "VastMacro.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/m2/mobileads/VastMacro;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/m2/mobileads/VastMacro;

.field public static final enum ASSETURI:Lcom/fusepowered/m2/mobileads/VastMacro;

.field public static final enum CACHEBUSTING:Lcom/fusepowered/m2/mobileads/VastMacro;

.field public static final enum CONTENTPLAYHEAD:Lcom/fusepowered/m2/mobileads/VastMacro;

.field public static final enum ERRORCODE:Lcom/fusepowered/m2/mobileads/VastMacro;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/fusepowered/m2/mobileads/VastMacro;

    const-string v1, "ERRORCODE"

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/m2/mobileads/VastMacro;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/mobileads/VastMacro;->ERRORCODE:Lcom/fusepowered/m2/mobileads/VastMacro;

    .line 18
    new-instance v0, Lcom/fusepowered/m2/mobileads/VastMacro;

    const-string v1, "CONTENTPLAYHEAD"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/m2/mobileads/VastMacro;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/mobileads/VastMacro;->CONTENTPLAYHEAD:Lcom/fusepowered/m2/mobileads/VastMacro;

    .line 23
    new-instance v0, Lcom/fusepowered/m2/mobileads/VastMacro;

    const-string v1, "CACHEBUSTING"

    invoke-direct {v0, v1, v4}, Lcom/fusepowered/m2/mobileads/VastMacro;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/mobileads/VastMacro;->CACHEBUSTING:Lcom/fusepowered/m2/mobileads/VastMacro;

    .line 28
    new-instance v0, Lcom/fusepowered/m2/mobileads/VastMacro;

    const-string v1, "ASSETURI"

    invoke-direct {v0, v1, v5}, Lcom/fusepowered/m2/mobileads/VastMacro;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/mobileads/VastMacro;->ASSETURI:Lcom/fusepowered/m2/mobileads/VastMacro;

    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fusepowered/m2/mobileads/VastMacro;

    sget-object v1, Lcom/fusepowered/m2/mobileads/VastMacro;->ERRORCODE:Lcom/fusepowered/m2/mobileads/VastMacro;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/m2/mobileads/VastMacro;->CONTENTPLAYHEAD:Lcom/fusepowered/m2/mobileads/VastMacro;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/m2/mobileads/VastMacro;->CACHEBUSTING:Lcom/fusepowered/m2/mobileads/VastMacro;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/m2/mobileads/VastMacro;->ASSETURI:Lcom/fusepowered/m2/mobileads/VastMacro;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fusepowered/m2/mobileads/VastMacro;->$VALUES:[Lcom/fusepowered/m2/mobileads/VastMacro;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/m2/mobileads/VastMacro;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/fusepowered/m2/mobileads/VastMacro;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m2/mobileads/VastMacro;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/m2/mobileads/VastMacro;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/fusepowered/m2/mobileads/VastMacro;->$VALUES:[Lcom/fusepowered/m2/mobileads/VastMacro;

    invoke-virtual {v0}, [Lcom/fusepowered/m2/mobileads/VastMacro;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/m2/mobileads/VastMacro;

    return-object v0
.end method

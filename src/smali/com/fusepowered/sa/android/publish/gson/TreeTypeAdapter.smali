.class final Lcom/fusepowered/sa/android/publish/gson/TreeTypeAdapter;
.super Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/sa/android/publish/gson/TreeTypeAdapter$1;,
        Lcom/fusepowered/sa/android/publish/gson/TreeTypeAdapter$SingleTypeFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fusepowered/sa/android/publish/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fusepowered/sa/android/publish/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final deserializer:Lcom/fusepowered/sa/android/publish/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fusepowered/sa/android/publish/gson/JsonDeserializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final gson:Lcom/fusepowered/sa/android/publish/gson/Gson;

.field private final serializer:Lcom/fusepowered/sa/android/publish/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fusepowered/sa/android/publish/gson/JsonSerializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final skipPast:Lcom/fusepowered/sa/android/publish/gson/TypeAdapterFactory;

.field private final typeToken:Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/fusepowered/sa/android/publish/gson/JsonSerializer;Lcom/fusepowered/sa/android/publish/gson/JsonDeserializer;Lcom/fusepowered/sa/android/publish/gson/Gson;Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;Lcom/fusepowered/sa/android/publish/gson/TypeAdapterFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/sa/android/publish/gson/JsonSerializer",
            "<TT;>;",
            "Lcom/fusepowered/sa/android/publish/gson/JsonDeserializer",
            "<TT;>;",
            "Lcom/fusepowered/sa/android/publish/gson/Gson;",
            "Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken",
            "<TT;>;",
            "Lcom/fusepowered/sa/android/publish/gson/TypeAdapterFactory;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;-><init>()V

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/gson/TreeTypeAdapter;->serializer:Lcom/fusepowered/sa/android/publish/gson/JsonSerializer;

    iput-object p2, p0, Lcom/fusepowered/sa/android/publish/gson/TreeTypeAdapter;->deserializer:Lcom/fusepowered/sa/android/publish/gson/JsonDeserializer;

    iput-object p3, p0, Lcom/fusepowered/sa/android/publish/gson/TreeTypeAdapter;->gson:Lcom/fusepowered/sa/android/publish/gson/Gson;

    iput-object p4, p0, Lcom/fusepowered/sa/android/publish/gson/TreeTypeAdapter;->typeToken:Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;

    iput-object p5, p0, Lcom/fusepowered/sa/android/publish/gson/TreeTypeAdapter;->skipPast:Lcom/fusepowered/sa/android/publish/gson/TypeAdapterFactory;

    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/sa/android/publish/gson/JsonSerializer;Lcom/fusepowered/sa/android/publish/gson/JsonDeserializer;Lcom/fusepowered/sa/android/publish/gson/Gson;Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;Lcom/fusepowered/sa/android/publish/gson/TypeAdapterFactory;Lcom/fusepowered/sa/android/publish/gson/TreeTypeAdapter$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/fusepowered/sa/android/publish/gson/TreeTypeAdapter;-><init>(Lcom/fusepowered/sa/android/publish/gson/JsonSerializer;Lcom/fusepowered/sa/android/publish/gson/JsonDeserializer;Lcom/fusepowered/sa/android/publish/gson/Gson;Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;Lcom/fusepowered/sa/android/publish/gson/TypeAdapterFactory;)V

    return-void
.end method

.method private delegate()Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fusepowered/sa/android/publish/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/gson/TreeTypeAdapter;->delegate:Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/gson/TreeTypeAdapter;->gson:Lcom/fusepowered/sa/android/publish/gson/Gson;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/gson/TreeTypeAdapter;->skipPast:Lcom/fusepowered/sa/android/publish/gson/TypeAdapterFactory;

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/gson/TreeTypeAdapter;->typeToken:Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/gson/Gson;->getDelegateAdapter(Lcom/fusepowered/sa/android/publish/gson/TypeAdapterFactory;Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;)Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/gson/TreeTypeAdapter;->delegate:Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;

    goto :goto_0
.end method

.method public static newFactory(Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/fusepowered/sa/android/publish/gson/TypeAdapterFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/fusepowered/sa/android/publish/gson/TypeAdapterFactory;"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v0, Lcom/fusepowered/sa/android/publish/gson/TreeTypeAdapter$SingleTypeFactory;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/sa/android/publish/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;ZLjava/lang/Class;Lcom/fusepowered/sa/android/publish/gson/TreeTypeAdapter$1;)V

    return-object v0
.end method

.method public static newFactoryWithMatchRawType(Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/fusepowered/sa/android/publish/gson/TypeAdapterFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/fusepowered/sa/android/publish/gson/TypeAdapterFactory;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    new-instance v0, Lcom/fusepowered/sa/android/publish/gson/TreeTypeAdapter$SingleTypeFactory;

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/sa/android/publish/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;ZLjava/lang/Class;Lcom/fusepowered/sa/android/publish/gson/TreeTypeAdapter$1;)V

    return-object v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/fusepowered/sa/android/publish/gson/TypeAdapterFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/fusepowered/sa/android/publish/gson/TypeAdapterFactory;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Lcom/fusepowered/sa/android/publish/gson/TreeTypeAdapter$SingleTypeFactory;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v4, p0

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/sa/android/publish/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;ZLjava/lang/Class;Lcom/fusepowered/sa/android/publish/gson/TreeTypeAdapter$1;)V

    return-object v0
.end method


# virtual methods
.method public read(Lcom/fusepowered/sa/android/publish/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/sa/android/publish/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/gson/TreeTypeAdapter;->deserializer:Lcom/fusepowered/sa/android/publish/gson/JsonDeserializer;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/gson/TreeTypeAdapter;->delegate()Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;->read(Lcom/fusepowered/sa/android/publish/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/fusepowered/sa/android/publish/gson/internal/Streams;->parse(Lcom/fusepowered/sa/android/publish/gson/stream/JsonReader;)Lcom/fusepowered/sa/android/publish/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/gson/TreeTypeAdapter;->deserializer:Lcom/fusepowered/sa/android/publish/gson/JsonDeserializer;

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/gson/TreeTypeAdapter;->typeToken:Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/gson/TreeTypeAdapter;->gson:Lcom/fusepowered/sa/android/publish/gson/Gson;

    iget-object v3, v3, Lcom/fusepowered/sa/android/publish/gson/Gson;->deserializationContext:Lcom/fusepowered/sa/android/publish/gson/JsonDeserializationContext;

    invoke-interface {v1, v0, v2, v3}, Lcom/fusepowered/sa/android/publish/gson/JsonDeserializer;->deserialize(Lcom/fusepowered/sa/android/publish/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/fusepowered/sa/android/publish/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public write(Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/gson/TreeTypeAdapter;->serializer:Lcom/fusepowered/sa/android/publish/gson/JsonSerializer;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/gson/TreeTypeAdapter;->delegate()Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;->write(Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;->nullValue()Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/gson/TreeTypeAdapter;->serializer:Lcom/fusepowered/sa/android/publish/gson/JsonSerializer;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/gson/TreeTypeAdapter;->typeToken:Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/gson/TreeTypeAdapter;->gson:Lcom/fusepowered/sa/android/publish/gson/Gson;

    iget-object v2, v2, Lcom/fusepowered/sa/android/publish/gson/Gson;->serializationContext:Lcom/fusepowered/sa/android/publish/gson/JsonSerializationContext;

    invoke-interface {v0, p2, v1, v2}, Lcom/fusepowered/sa/android/publish/gson/JsonSerializer;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/fusepowered/sa/android/publish/gson/JsonSerializationContext;)Lcom/fusepowered/sa/android/publish/gson/JsonElement;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/fusepowered/sa/android/publish/gson/internal/Streams;->write(Lcom/fusepowered/sa/android/publish/gson/JsonElement;Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;)V

    goto :goto_0
.end method

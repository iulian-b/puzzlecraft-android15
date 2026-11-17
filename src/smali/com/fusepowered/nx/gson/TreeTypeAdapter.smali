.class final Lcom/fusepowered/nx/gson/TreeTypeAdapter;
.super Lcom/fusepowered/nx/gson/TypeAdapter;
.source "TreeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/nx/gson/TreeTypeAdapter$1;,
        Lcom/fusepowered/nx/gson/TreeTypeAdapter$SingleTypeFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fusepowered/nx/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lcom/fusepowered/nx/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fusepowered/nx/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final deserializer:Lcom/fusepowered/nx/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fusepowered/nx/gson/JsonDeserializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final gson:Lcom/fusepowered/nx/gson/Gson;

.field private final serializer:Lcom/fusepowered/nx/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fusepowered/nx/gson/JsonSerializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final skipPast:Lcom/fusepowered/nx/gson/TypeAdapterFactory;

.field private final typeToken:Lcom/fusepowered/nx/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fusepowered/nx/gson/reflect/TypeToken",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/fusepowered/nx/gson/JsonSerializer;Lcom/fusepowered/nx/gson/JsonDeserializer;Lcom/fusepowered/nx/gson/Gson;Lcom/fusepowered/nx/gson/reflect/TypeToken;Lcom/fusepowered/nx/gson/TypeAdapterFactory;)V
    .locals 0
    .param p3, "gson"    # Lcom/fusepowered/nx/gson/Gson;
    .param p5, "skipPast"    # Lcom/fusepowered/nx/gson/TypeAdapterFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/nx/gson/JsonSerializer",
            "<TT;>;",
            "Lcom/fusepowered/nx/gson/JsonDeserializer",
            "<TT;>;",
            "Lcom/fusepowered/nx/gson/Gson;",
            "Lcom/fusepowered/nx/gson/reflect/TypeToken",
            "<TT;>;",
            "Lcom/fusepowered/nx/gson/TypeAdapterFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/fusepowered/nx/gson/TreeTypeAdapter;, "Lcom/fusepowered/nx/gson/TreeTypeAdapter<TT;>;"
    .local p1, "serializer":Lcom/fusepowered/nx/gson/JsonSerializer;, "Lcom/fusepowered/nx/gson/JsonSerializer<TT;>;"
    .local p2, "deserializer":Lcom/fusepowered/nx/gson/JsonDeserializer;, "Lcom/fusepowered/nx/gson/JsonDeserializer<TT;>;"
    .local p4, "typeToken":Lcom/fusepowered/nx/gson/reflect/TypeToken;, "Lcom/fusepowered/nx/gson/reflect/TypeToken<TT;>;"
    invoke-direct {p0}, Lcom/fusepowered/nx/gson/TypeAdapter;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/fusepowered/nx/gson/TreeTypeAdapter;->serializer:Lcom/fusepowered/nx/gson/JsonSerializer;

    .line 44
    iput-object p2, p0, Lcom/fusepowered/nx/gson/TreeTypeAdapter;->deserializer:Lcom/fusepowered/nx/gson/JsonDeserializer;

    .line 45
    iput-object p3, p0, Lcom/fusepowered/nx/gson/TreeTypeAdapter;->gson:Lcom/fusepowered/nx/gson/Gson;

    .line 46
    iput-object p4, p0, Lcom/fusepowered/nx/gson/TreeTypeAdapter;->typeToken:Lcom/fusepowered/nx/gson/reflect/TypeToken;

    .line 47
    iput-object p5, p0, Lcom/fusepowered/nx/gson/TreeTypeAdapter;->skipPast:Lcom/fusepowered/nx/gson/TypeAdapterFactory;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/nx/gson/JsonSerializer;Lcom/fusepowered/nx/gson/JsonDeserializer;Lcom/fusepowered/nx/gson/Gson;Lcom/fusepowered/nx/gson/reflect/TypeToken;Lcom/fusepowered/nx/gson/TypeAdapterFactory;Lcom/fusepowered/nx/gson/TreeTypeAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fusepowered/nx/gson/JsonSerializer;
    .param p2, "x1"    # Lcom/fusepowered/nx/gson/JsonDeserializer;
    .param p3, "x2"    # Lcom/fusepowered/nx/gson/Gson;
    .param p4, "x3"    # Lcom/fusepowered/nx/gson/reflect/TypeToken;
    .param p5, "x4"    # Lcom/fusepowered/nx/gson/TypeAdapterFactory;
    .param p6, "x5"    # Lcom/fusepowered/nx/gson/TreeTypeAdapter$1;

    .prologue
    .line 31
    .local p0, "this":Lcom/fusepowered/nx/gson/TreeTypeAdapter;, "Lcom/fusepowered/nx/gson/TreeTypeAdapter<TT;>;"
    invoke-direct/range {p0 .. p5}, Lcom/fusepowered/nx/gson/TreeTypeAdapter;-><init>(Lcom/fusepowered/nx/gson/JsonSerializer;Lcom/fusepowered/nx/gson/JsonDeserializer;Lcom/fusepowered/nx/gson/Gson;Lcom/fusepowered/nx/gson/reflect/TypeToken;Lcom/fusepowered/nx/gson/TypeAdapterFactory;)V

    return-void
.end method

.method private delegate()Lcom/fusepowered/nx/gson/TypeAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fusepowered/nx/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/fusepowered/nx/gson/TreeTypeAdapter;, "Lcom/fusepowered/nx/gson/TreeTypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/fusepowered/nx/gson/TreeTypeAdapter;->delegate:Lcom/fusepowered/nx/gson/TypeAdapter;

    .line 76
    .local v0, "d":Lcom/fusepowered/nx/gson/TypeAdapter;, "Lcom/fusepowered/nx/gson/TypeAdapter<TT;>;"
    if-eqz v0, :cond_0

    .end local v0    # "d":Lcom/fusepowered/nx/gson/TypeAdapter;, "Lcom/fusepowered/nx/gson/TypeAdapter<TT;>;"
    :goto_0
    return-object v0

    .restart local v0    # "d":Lcom/fusepowered/nx/gson/TypeAdapter;, "Lcom/fusepowered/nx/gson/TypeAdapter<TT;>;"
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/nx/gson/TreeTypeAdapter;->gson:Lcom/fusepowered/nx/gson/Gson;

    iget-object v2, p0, Lcom/fusepowered/nx/gson/TreeTypeAdapter;->skipPast:Lcom/fusepowered/nx/gson/TypeAdapterFactory;

    iget-object v3, p0, Lcom/fusepowered/nx/gson/TreeTypeAdapter;->typeToken:Lcom/fusepowered/nx/gson/reflect/TypeToken;

    invoke-virtual {v1, v2, v3}, Lcom/fusepowered/nx/gson/Gson;->getDelegateAdapter(Lcom/fusepowered/nx/gson/TypeAdapterFactory;Lcom/fusepowered/nx/gson/reflect/TypeToken;)Lcom/fusepowered/nx/gson/TypeAdapter;

    move-result-object v0

    .end local v0    # "d":Lcom/fusepowered/nx/gson/TypeAdapter;, "Lcom/fusepowered/nx/gson/TypeAdapter<TT;>;"
    iput-object v0, p0, Lcom/fusepowered/nx/gson/TreeTypeAdapter;->delegate:Lcom/fusepowered/nx/gson/TypeAdapter;

    goto :goto_0
.end method

.method public static newFactory(Lcom/fusepowered/nx/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/fusepowered/nx/gson/TypeAdapterFactory;
    .locals 6
    .param p1, "typeAdapter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/nx/gson/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/fusepowered/nx/gson/TypeAdapterFactory;"
        }
    .end annotation

    .prologue
    .local p0, "exactType":Lcom/fusepowered/nx/gson/reflect/TypeToken;, "Lcom/fusepowered/nx/gson/reflect/TypeToken<*>;"
    const/4 v4, 0x0

    .line 85
    new-instance v0, Lcom/fusepowered/nx/gson/TreeTypeAdapter$SingleTypeFactory;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/nx/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/fusepowered/nx/gson/reflect/TypeToken;ZLjava/lang/Class;Lcom/fusepowered/nx/gson/TreeTypeAdapter$1;)V

    return-object v0
.end method

.method public static newFactoryWithMatchRawType(Lcom/fusepowered/nx/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/fusepowered/nx/gson/TypeAdapterFactory;
    .locals 6
    .param p1, "typeAdapter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/nx/gson/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/fusepowered/nx/gson/TypeAdapterFactory;"
        }
    .end annotation

    .prologue
    .local p0, "exactType":Lcom/fusepowered/nx/gson/reflect/TypeToken;, "Lcom/fusepowered/nx/gson/reflect/TypeToken<*>;"
    const/4 v4, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/fusepowered/nx/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fusepowered/nx/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v3, 0x1

    .line 96
    .local v3, "matchRawType":Z
    :goto_0
    new-instance v0, Lcom/fusepowered/nx/gson/TreeTypeAdapter$SingleTypeFactory;

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/nx/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/fusepowered/nx/gson/reflect/TypeToken;ZLjava/lang/Class;Lcom/fusepowered/nx/gson/TreeTypeAdapter$1;)V

    return-object v0

    .line 95
    .end local v3    # "matchRawType":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/fusepowered/nx/gson/TypeAdapterFactory;
    .locals 6
    .param p1, "typeAdapter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/fusepowered/nx/gson/TypeAdapterFactory;"
        }
    .end annotation

    .prologue
    .local p0, "hierarchyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 105
    new-instance v0, Lcom/fusepowered/nx/gson/TreeTypeAdapter$SingleTypeFactory;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v4, p0

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/nx/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/fusepowered/nx/gson/reflect/TypeToken;ZLjava/lang/Class;Lcom/fusepowered/nx/gson/TreeTypeAdapter$1;)V

    return-object v0
.end method


# virtual methods
.method public read(Lcom/fusepowered/nx/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 4
    .param p1, "in"    # Lcom/fusepowered/nx/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/nx/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/fusepowered/nx/gson/TreeTypeAdapter;, "Lcom/fusepowered/nx/gson/TreeTypeAdapter<TT;>;"
    iget-object v1, p0, Lcom/fusepowered/nx/gson/TreeTypeAdapter;->deserializer:Lcom/fusepowered/nx/gson/JsonDeserializer;

    if-nez v1, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/fusepowered/nx/gson/TreeTypeAdapter;->delegate()Lcom/fusepowered/nx/gson/TypeAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/fusepowered/nx/gson/TypeAdapter;->read(Lcom/fusepowered/nx/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    .line 58
    :goto_0
    return-object v1

    .line 54
    :cond_0
    invoke-static {p1}, Lcom/fusepowered/nx/gson/internal/Streams;->parse(Lcom/fusepowered/nx/gson/stream/JsonReader;)Lcom/fusepowered/nx/gson/JsonElement;

    move-result-object v0

    .line 55
    .local v0, "value":Lcom/fusepowered/nx/gson/JsonElement;
    invoke-virtual {v0}, Lcom/fusepowered/nx/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    const/4 v1, 0x0

    goto :goto_0

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/nx/gson/TreeTypeAdapter;->deserializer:Lcom/fusepowered/nx/gson/JsonDeserializer;

    iget-object v2, p0, Lcom/fusepowered/nx/gson/TreeTypeAdapter;->typeToken:Lcom/fusepowered/nx/gson/reflect/TypeToken;

    invoke-virtual {v2}, Lcom/fusepowered/nx/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/nx/gson/TreeTypeAdapter;->gson:Lcom/fusepowered/nx/gson/Gson;

    iget-object v3, v3, Lcom/fusepowered/nx/gson/Gson;->deserializationContext:Lcom/fusepowered/nx/gson/JsonDeserializationContext;

    invoke-interface {v1, v0, v2, v3}, Lcom/fusepowered/nx/gson/JsonDeserializer;->deserialize(Lcom/fusepowered/nx/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/fusepowered/nx/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public write(Lcom/fusepowered/nx/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 4
    .param p1, "out"    # Lcom/fusepowered/nx/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/nx/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/fusepowered/nx/gson/TreeTypeAdapter;, "Lcom/fusepowered/nx/gson/TreeTypeAdapter<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/fusepowered/nx/gson/TreeTypeAdapter;->serializer:Lcom/fusepowered/nx/gson/JsonSerializer;

    if-nez v1, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/fusepowered/nx/gson/TreeTypeAdapter;->delegate()Lcom/fusepowered/nx/gson/TypeAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/fusepowered/nx/gson/TypeAdapter;->write(Lcom/fusepowered/nx/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 72
    :goto_0
    return-void

    .line 66
    :cond_0
    if-nez p2, :cond_1

    .line 67
    invoke-virtual {p1}, Lcom/fusepowered/nx/gson/stream/JsonWriter;->nullValue()Lcom/fusepowered/nx/gson/stream/JsonWriter;

    goto :goto_0

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/nx/gson/TreeTypeAdapter;->serializer:Lcom/fusepowered/nx/gson/JsonSerializer;

    iget-object v2, p0, Lcom/fusepowered/nx/gson/TreeTypeAdapter;->typeToken:Lcom/fusepowered/nx/gson/reflect/TypeToken;

    invoke-virtual {v2}, Lcom/fusepowered/nx/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/nx/gson/TreeTypeAdapter;->gson:Lcom/fusepowered/nx/gson/Gson;

    iget-object v3, v3, Lcom/fusepowered/nx/gson/Gson;->serializationContext:Lcom/fusepowered/nx/gson/JsonSerializationContext;

    invoke-interface {v1, p2, v2, v3}, Lcom/fusepowered/nx/gson/JsonSerializer;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/fusepowered/nx/gson/JsonSerializationContext;)Lcom/fusepowered/nx/gson/JsonElement;

    move-result-object v0

    .line 71
    .local v0, "tree":Lcom/fusepowered/nx/gson/JsonElement;
    invoke-static {v0, p1}, Lcom/fusepowered/nx/gson/internal/Streams;->write(Lcom/fusepowered/nx/gson/JsonElement;Lcom/fusepowered/nx/gson/stream/JsonWriter;)V

    goto :goto_0
.end method
